#!/usr/bin/env python
# -*- coding: utf-8 -*-
#

c = get_config()

c.TerminalIPythonApp.display_banner = False
c.InteractiveShell.autoindent = False
c.InteractiveShell.colors = 'Linux'
c.InteractiveShell.editor = 'vim'
#c.InteractiveShell.pylab = 'qt'

#c.PromptManager.in_template  = '[\#] In: '
c.PromptManager.in_template = r'{color.LightPurple}\${color.Cyan}[\#{color.Cyan}]{color.Cyan}: '
c.PromptManager.out_template = '[\#] Out: '
c.PromptManager.justify = True

# set default figure window size for matplotlib
#matplotlib.rcParams['figure.figsize'] = (15.0, 7.0)
