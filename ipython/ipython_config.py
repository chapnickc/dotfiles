import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
mpl.rcParams['backend'] = "Qt5Agg"

c = get_config()
c.InteractiveShell.autoindent = False
c.InteractiveShell.colors = 'Linux'
c.InteractiveShell.editor = 'vim'
c.TerminalIPythonApp.display_banner = True
c.TerminalInteractiveShell.editing_mode = 'vi'
