set nocompatible              " be iMproved, required for vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/dotfiles/vim/
set rtp+=~/dotfiles/vim/bundle/Vundle.vim

" --------------------------------------------
"                 Vundle
" --------------------------------------------

"--------------------------
"       Begin Vundle
"--------------------------
call vundle#begin()
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'             " required
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()                         " required
"--------------------------
"        End Vundle
"--------------------------

filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" ------------------------------------------------------------------------------------------


"          Initialize
"set term=screen-256color        " define terminal. should be the same
                                " as that defined in .tmux.conf. Note:
                                " had to use screen rather than xterm


"     Key Mapping
let mapleader="\<Space>"                  " change the mapleader from '\' to space
nmap <leader>l :bnext<CR>                 " Move to the next buffer
nmap <leader>h :bprevious<CR>             " Move to the previous buffer
map <F7> mzgg=G`z                         " Reindent the entire file



"      General
let &t_Co=256                      " Enable 256 colors
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
set termencoding=utf-8
set fileencoding=utf-8
set term=xterm-256color




" --------------------------------------------------------
"                    Indentation
" - More info at http://www.vex.net/~x/python_and_vim.html
" --------------------------------------------------------
set modeline
set smartindent
set autoindent
set expandtab                       " turn tabs into spaces
set softtabstop=4                   " allow vim to see 4 spaces as a tab
set tabstop=4                       "set tab to indent 4 spaces
set shiftwidth=4                    "indent width for autoindent


" --------------------------------------------
"                    Slimux
" --------------------------------------------
"map <C-c><C-c> :SlimuxREPLSendLine<CR>
"vmap <C-c><C-c> :SlimuxREPLSendSelection<CR>


" --------------------------------------------
"                  Theme
" --------------------------------------------
syntax enable 

set background=dark
colorscheme sift

highlight LineNr       ctermbg=234 ctermfg=236  

"highlight clear SignColumn
"highlight VertSplit    ctermbg=236
"highlight ColorColumn  ctermbg=237

"highlight CursorLineNr ctermbg=236 ctermfg=240
"highlight CursorLine   ctermbg=236
"highlight StatusLineNC ctermbg=238 ctermfg=0
"highlight StatusLine   ctermbg=240 ctermfg=12
"highlight IncSearch    ctermbg=3   ctermfg=1
"highlight Search       ctermbg=1   ctermfg=3
"highlight Visual       ctermbg=3   ctermfg=0
"highlight Pmenu        ctermbg=240 ctermfg=12
"highlight PmenuSel     ctermbg=3   ctermfg=1
"highlight SpellBad     ctermbg=0   ctermfg=1




" --------------------------------------------
"            Vim-Airline (Powerline)
" --------------------------------------------
set noshowmode                                     " Hide the default mode text (e.g. -- INSERT -- below the statusline)

let g:airline_powerline_fonts = 1                  " Allows for special symbols
let g:airline_section_z = '%'                      " Make the right side empty
let g:airline#extensions#tabline#enabled = 1       " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'   " Show just the filename
let g:airline_theme = 'murmur'

" --------------------------------------------
"               Vim Markdown
" --------------------------------------------
let g:vim_markdown_math = 1                        " Enable LaTeX math


" --------------------------------------------
"               YouCompleteMe
" --------------------------------------------
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



"let python_highlight_all=1 " enable all Python syntax highlighting features
