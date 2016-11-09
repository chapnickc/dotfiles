"https://github.com/chrokh/shell-colors "
set nocompatible              " be iMproved, required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/dotfiles/vim/

" --------------------------------------------
"                 Vundle
" --------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
filetype off                  " required

call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'               " required
    Plugin 'scrooloose/nerdcommenter'
    "Plugin 'vim-airline/vim-airline'
    "Plugin 'vim-airline/vim-airline-themes'
    "Plugin 'jpalardy/vim-slime'                 " tmux integration
    "Plugin 'plasticboy/vim-markdown'
    "Plugin 'chriskempson/base16-vim'
call vundle#end()                         

filetype plugin indent on    " required
" ---------------------------------------------
"          Initialize
set term=screen-256color       " define terminal. should be the same as in .tmux.conf. 

"     Key Mapping
"    viw"0p - allows you to replace inner word with that in the register
let mapleader="\<Space>"                  " change the mapleader from '\' to space
nnoremap <leader>w :w<CR>                 " Type <Space>w to save file
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>                 " Type <Space>wq to save and quit file
nnoremap <leader>bd :bd<CR>                 " Type <Space>bd to close a buffer
"nnoremap <leader>a @                       " for playing back macros
nmap <leader>l :bnext<CR>                   " Move to the next buffer
nmap <leader>h :bprevious<CR>               " Move to the previous buffer
map <F7> mzgg=G`z                           " Reindent the entire file

"xnoremap p "_dP
"xnoremap <leader>p "_dP                     " replace inner work with that in registerviw<Space>p 

"autocmd FileType tex setlocal foldmethod=syntax

"alternate keys for indenting/unindenting
"nnoremap <Tab> >>
"nnoremap <S-Tab> <LT><LT>
"vnoremap <Tab> >
"vnoremap <S-Tab> <LT>

    

"      General
set t_Co=256                      " Enable 256 colors
set number                         " Show line numbers
set backspace=indent,eol,start     " Allow backspace in insert mode
set laststatus=2                   " Always show the status bar
set autoread                       " Reload files changed outside vim
set hidden                         " allows buffers to be hidden if they are modified
set pastetoggle=<c-a>               " Paste without being smart
set nowrap                         " Don't wrap lines
set clipboard=unnamed              " Use the system clipboard
set ruler                          " Cursor position
set autowrite                      " Automatically save file
set showmatch                      " Show matching brackets
set encoding=utf-8 
set termencoding=utf-8
set fileencoding=utf-8
set timeoutlen=900 ttimeoutlen=10
set nohlsearch	                        " Don't continue to highlight searched phrases.
set incsearch		                    " But do highlight as you type your search.
set ignorecase		                    " Make searches case-insensitive.
set cole=2


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
set cursorline                      " show a cursor line
set ttyfast                         " Send more characters for redraws
set mouse=a                         " Enable Mouse in all modes


" --------------------------------------------
"                  Theme
" --------------------------------------------
"if filereadable(expand("~/.vimrc_background"))
"    let base16colorspace=256 " Access colors present in 256 colorspace
"    source ~/.vimrc_background
"endif

syntax enable 
set background=dark
colo slate


" --------------------------------------------
"                  Vim-Slime
" --------------------------------------------
let g:slime_target = "tmux"
let g:slime_paste_file = "~/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}
let g:slime_dont_ask_default = 1
let g:slime_python_ipython = 1

xmap <leader><tab> <Plug>SlimeRegionSend
nmap <leader><tab> <Plug>SlimeLineSend
nmap <leader>p<tab> <Plug>SlimeParagraphSend
nmap <leader>N     <Plug>SlimeConfig


" --------------------------------------------
"            Vim-Airline (Powerline)
" --------------------------------------------
"set noshowmode                                     " Hide the default mode text (e.g. -- INSERT -- below the statusline)

let g:airline_powerline_fonts = 1                  " Allows for special symbols
let g:airline_section_z = '%'                      " Make the right side empty
let g:airline#extensions#tabline#enabled = 1       " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'   " Show just the filename
let g:airline_theme = 'base16_eighties'

" --------------------------------------------
"               Vim Markdown
" --------------------------------------------
let g:vim_markdown_math=1                        " Enable LaTeX math
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0

