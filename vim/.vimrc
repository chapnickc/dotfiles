set nocompatible              " be iMproved, required for vundle
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/dotfiles/vim/
set rtp+=~/dotfiles/vim/bundle/Vundle.vim

" --------------------------------------------
"                 Vundle
" --------------------------------------------
call vundle#begin()
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Put your non-Plugin stuff after this line
" ------------------------------------------------------------------------------------------


"          Initialize
"set term=screen-256color        " define terminal. should be the same
                                " as that defined in .tmux.conf. Note:
                                " had to use screen rather than xterm
let &t_Co=256

"     Key Mapping
"let mapleader="\"                  " change the mapleader from \ to ,
nmap <leader>l :bnext<CR>          " Move to the next buffer
nmap <leader>h :bprevious<CR>      " Move to the previous buffer

"      General
set number                         " Show line numbers
set backspace=indent,eol,start     " Allow backspace in insert mode
set laststatus=2                   " Always show the status bar
set autoread                       " Reload files changed outside vim
set hidden                         " allows buffers to be hidden if they are modified
set pastetoggle=<F2>               " Paste without being smart
set nowrap                         " Don't wrap lines
set clipboard=unnamed              " Use the system clipboard
set clipboard=unnamedplus          " registers map to the clipboard, and can be pasted with CTRL-V
set ruler                          " Cursor position
set autowrite                      " Automatically save file
set showmatch                      " Show matching brackets
set encoding=utf-8                 " File encoding
set fileencoding=utf-8


"       Indentation
"   More info at http://www.vex.net/~x/python_and_vim.html
set modeline
set smartindent
set autoindent
set expandtab                       " turn tabs into spaces
set softtabstop=4                   " allow vim to see 4 spaces as a tab
set tabstop=4                       "set tab to indent 4 spaces
set shiftwidth=4                    "indent width for autoindent



"       Slimux
"map <C-c><C-c> :SlimuxREPLSendLine<CR>
"vmap <C-c><C-c> :SlimuxREPLSendSelection<CR>


"       Theme
" File type settings
syntax enable 
set background=dark
"colorscheme Tomorrow-Night-Eighties 
"colorscheme brogrammer
"let python_highlight_all=1 " enable all Python syntax highlighting features
"

"       Powerline
set noshowmode                                 " Hide the default mode text (e.g. -- INSERT -- below the statusline)
let g:Powerline_symbols = 'fancy'
set term=xterm-256color
set termencoding=utf-8

let g:airline_powerline_fonts = 1              " Allows for special symbols
let g:airline_section_z = '%'                  " Make the right side empty
let g:airline_theme = 'bubblegum'
let g:airline#extensions#tabline#enabled = 1     " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'   " Show just the filename

""      YouCompleteMe
"set completeopt-=preview                       " remove documentation preview
"set pumheight=20                               " Limit popup menu height
"let g:ycm_echo_current_diagnostic = 0
"let g:ycm_confirm_extra_conf = 0               " dont ask about .ycm_extra_conf file
"let g:ycm_show_diagnostics_ui = 0              " remove extra diganostics 

"      Vimtex
"let g:vimtex_enable = 1
"let g:tex_flavor = 'latex'


" non-recursively map '\+[' to go to documentation
"nnoremap <Leader>[ :YcmCompleter GetDoc<CR>

" non-recursively map '\+]' to close preview windows 
"nnoremap <Leader>] :pclose<CR>


" ------------------------------------------------------------------------------------------

