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
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'Yggdroot/indentLine'
    Plugin 'jpalardy/vim-slime'                 " tmux integration
    Plugin 'ervandew/screen'                    " required for VimLab
    Plugin 'dajero/VimLab'                      " matlab assistance
    Plugin 'hdima/python-syntax'
    Plugin 'toyamarinyon/vim-swift'
    Plugin 'plasticboy/vim-markdown'
    Plugin 'octol/vim-cpp-enhanced-highlight'
    Plugin 'chriskempson/vim-tomorrow-theme'    " Themes
    Plugin 'morhetz/gruvbox'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'lervag/vimtex'
"    Plugin 'SirVer/ultisnips'
    "Plugin 'honza/vim-snippets'

   
    "Plugin 'godlygeek/tabular'

    "Plugin 'jaxbot/semantic-highlight.vim'
    "Plugin 'dracula/vim'
    "Plugin 'vim-scripts/Vim-R-plugin'
    "Plugin 'raphamorim/lucario'
call vundle#end()                         

filetype plugin indent on    " required
" ---------------------------------------------

let g:UltiSnipsExpandTrigger="<S-CR>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"          Initialize
set term=screen-256color       " define terminal. should be the same as in .tmux.conf. 

"     Key Mapping
let mapleader="\<Space>"                  " change the mapleader from '\' to space
nnoremap <leader>w :w<CR>                 " Type <Space>w to save file
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>                 " Type <Space>wq to save and quit file
nnoremap <leader>a @                      " for playing back macros
nmap <leader>l :bnext<CR>                 " Move to the next buffer
nmap <leader>h :bprevious<CR>             " Move to the previous buffer
map <F7> mzgg=G`z                         " Reindent the entire file


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
set pastetoggle=<F2>               " Paste without being smart
set nowrap                         " Don't wrap lines
set clipboard=unnamed              " Use the system clipboard
"set clipboard=unnamedplus          " registers map to the clipboard, and can be pasted with CTRL-V
set ruler                          " Cursor position
set autowrite                      " Automatically save file
set showmatch                      " Show matching brackets
set encoding=utf-8                 " File encoding
set termencoding=utf-8
set fileencoding=utf-8
set timeoutlen=900 ttimeoutlen=10


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
syntax enable 
set background=dark
colorscheme luna-term  " gruvbox zeno Tomorrow-Night-Eighties

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
set noshowmode                                     " Hide the default mode text (e.g. -- INSERT -- below the statusline)

let g:airline_powerline_fonts = 1                  " Allows for special symbols
let g:airline_section_z = '%'                      " Make the right side empty
let g:airline#extensions#tabline#enabled = 1       " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'   " Show just the filename
let g:airline_theme = 'murmur'

" --------------------------------------------
"               Vim Markdown
" --------------------------------------------
let g:vim_markdown_math=1                        " Enable LaTeX math
let g:vim_markdown_folding_disabled = 1

" --------------------------------------------
"               Python Syntax
" --------------------------------------------
let python_highlight_all=1 " enable all Python syntax highlighting features

" --------------------------------------------
"               YouCompleteMe
" --------------------------------------------
set completeopt-=preview                       " remove documentation preview
set pumheight=20                               " Limit popup menu height
let g:ycm_show_diagnostics_ui = 0
let g:ycm_global_ycm_extra_conf = '~/dotfiles/vim/.ycm_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files = 1
"let g:ycm_dont_warn_on_startup = 0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
nnoremap <Leader>[ :YcmCompleter GetDoc<CR>    " non-recursively map '\+[' to go to documentation
nnoremap <Leader>] :pclose<CR>                 " non-recursively map '\+]' to close preview windows 

" --------------------------------------------
"               VimLab
" --------------------------------------------
let g:matlab_vimlab_vertical=1

" --------------------------------------------
"               indentLine
" --------------------------------------------

"let g:indentLine_color_dark = 1 " (default: 2)
let g:indentLine_color_term = 237

" --------------------------------------------
"               VimTeX
" --------------------------------------------
"" LaTeX (rubber) macro for compiling
"nnoremap <leader>c :w<CR>:!rubber --pdf --warn all %<CR>
" Change default target to pdf, if not dvi is used
"let g:Tex_DefaultTargetFormat = 'pdf'
 
" Setup the compile rule for pdf to use pdflatex with synctex enabled
"let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*' 
 
" PDF display rule
"let g:Tex_ViewRule_pdf = 'Skim'

nnoremap <leader>c :VimtexCompileSS<CR> 
nnoremap <leader>v :VimtexView<CR>
nnoremap <leader>tc :VimtexClean<CR>
"
""  forward search
"nnoremap <leader>f :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r <C-r>=line('.')<CR> %<.pdf %<CR><CR>




