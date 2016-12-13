#!/usr/bin/python
""" """

if __name__ == '__main__':

    import subprocess
    import re

    # Get process info
    ps = subprocess.Popen(['ps', '-caxm', '-orss,comm'], stdout=subprocess.PIPE).communicate()[0]
    vm = subprocess.Popen(['vm_stat'], stdout=subprocess.PIPE).communicate()[0]

    # Iterate processes
    processLines = ps.decode('utf8').split('\n')
    sep = re.compile('[\s]+')
    rssTotal = 0 # kB
    for row in range(1,len(processLines)):
        rowText = processLines[row].strip()
        rowElements = sep.split(rowText)
        try:
            rss = float(rowElements[0]) * 1024
        except:
            rss = 0 # ignore...
        rssTotal += rss

    # Process vm_stat
    vmLines = vm.decode('utf8').split('\n')
    sep = re.compile(':[\s]+')
    vmStats = {}
    for row in range(1,len(vmLines)-2):
        rowText = vmLines[row].strip()
        rowElements = sep.split(rowText)
        vmStats[(rowElements[0])] = int(rowElements[1].strip('\.')) * 4096


    k = 1024**2
    stats = {'Wired Memory': vmStats['Pages wired down']/k,
            'Active Memory': vmStats['Pages active']/k,
            'Inactive Memory': vmStats['Pages inactive']/k,
            'Real Memory Total': vmStats['Pages free']/k}

    print('\n')
    for key, val in stats.items():
        print('{}:\t{:0.0f} MB'.format(key, val).expandtabs(10))
    print('\n')
