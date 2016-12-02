#!/usr/bin/python

"""


"""


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

    cmds = [
            'Wired Memory:\t\t{}MB'.format(vmStats["Pages wired down"]/1024**2 ),
            'Active Memory:\t\t{}MB'.format(vmStats["Pages active"]/1024**2 ),
            'Inactive Memory:\t\t{}MB'.format(vmStats["Pages inactive"]/1024**2 ),
            'Free Memory:\t\t{} MB'.format(vmStats["Pages free"]/1024**2 ),
            'Real Mem Total (ps):\t{}MB'.format(rssTotal/1024**2),
            'du -sh Google\ Drive/ '\
            ]


for cmd in cmds:
    subprocess.run(cmd, shell=True, check=True)
