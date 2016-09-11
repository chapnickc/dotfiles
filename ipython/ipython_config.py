#!/usr/bin/env python
# -*- coding: utf-8 -*-
import matplotlib as mpl

mpl.rcParams['backend'] = "Qt5Agg"

c = get_config()

c.TerminalIPythonApp.display_banner = True
c.InteractiveShell.autoindent = False
c.InteractiveShell.colors = 'Linux'
c.InteractiveShell.editor = 'vim'
c.TerminalInteractiveShell.editing_mode = 'vi'
