#!/usr/bin/env python
# -*- coding: utf-8 -*-
#

c = get_config()

c.TerminalIPythonApp.display_banner = True
c.InteractiveShell.autoindent = False
c.InteractiveShell.colors = 'Linux'
c.TerminalInteractiveShell.editing_mode = 'vi'
#c.InteractiveShell.pylab = 'qt'

#c.PromptManager.in_template  = '[\#] In: '
# c.TerminalInteractiveShell.prompts_class.in_template = r'{color.LightPurple}\${color.Cyan}[\#{color.Cyan}]{color.Cyan}: '
# c.TerminalInteractiveShell.prompts_class.out_template = '[\#] Out: '
# c.TerminalInteractiveShell.prompts_class.justify = True

# set default figure window size for matplotlib
#matplotlib.rcParams['figure.figsize'] = (15.0, 7.0)
