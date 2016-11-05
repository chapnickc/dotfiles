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
    "Plugin 'vim-scripts/avr.vim'
    Plugin 'chriskempson/base16-vim'
    Plugin 'VundleVim/Vundle.vim'               " required
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'Yggdroot/indentLine'
    Plugin 'jpalardy/vim-slime'                 " tmux integration
    Plugin 'hdima/python-syntax'
    Plugin 'plasticboy/vim-markdown'
    Plugin 'octol/vim-cpp-enhanced-highlight'
    Plugin 'matze/vim-tex-fold'
    Plugin 'lervag/vimtex'
    "Plugin 'ervandew/screen'                    " required for VimLab
    "Plugin 'dajero/VimLab'                      " matlab assistance
    "Plugin 'toyamarinyon/vim-swift'
    "Plugin 'xolox/vim-misc'
    "Plugin 'xolox/vim-notes'
call vundle#end()                         
filetype plugin indent on    " required

    
" ---------------------------------------------
"               General
" ---------------------------------------------

set term=screen-256color                " define terminal. should be the same as in .tmux.conf.  previously 'xterm-256color'
set t_Co=256                            " Enable 256 colors
set encoding=utf-8 
set termencoding=utf-8
set fileencoding=utf-8
set number                              " Show line numbers
set backspace=indent,eol,start          " Allow backspace in insert mode
set laststatus=2                        " Always show the status bar
set autoread                            " Reload files changed outside vim
set hidden                              " allows buffers to be hidden if they are modified
set pastetoggle=<c-a>                   " Paste without being smart
set nowrap                              " Don't wrap lines
set clipboard=unnamed                   " Use the system clipboard
set ruler                               " Cursor position
set autowrite                           " Automatically save file
set showmatch                           " Show matching brackets
set timeoutlen=900 ttimeoutlen=10       " switch modes faster (decrease esc/caps-lock lag)  
set nohlsearch	                        " Don't continue to highlight searched phrases.
set incsearch		                    " But do highlight as you type your search.
set ignorecase		                    " Make searches case-insensitive.
set cole=2
set foldmethod=manual
set cursorline                      " show a cursor line
set ttyfast                         " Send more characters for redraws
set mouse=a                         " Enable Mouse in all modes
"set colorcolumn=80                 " show line past 80 cols


" Indentation

" --------------------------------------------------------
set modeline        " enable filetype variable
set smartindent
set autoindent
set expandtab       " turn tabs into spaces
set softtabstop=4   " allow vim to see 4 spaces as a tab
set tabstop=4       "set tab to indent 4 spaces
set shiftwidth=4    "indent width for autoindent

" --------------------------------------------------------
"                   Key Mapping
" --------------------------------------------------------
let mapleader="\<Space>"                  " change the mapleader from '\' to space
map <F1> :setlocal spell! spelllang=en_us<CR>
nnoremap <leader>r :source ~/.vimrc<CR>   
nnoremap <leader>w :w<CR>                 " Type <Space>w to save file
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>                 " Type <Space>wq to save and quit file
nnoremap <leader>bd :bd<CR>                 " Type <Space>bd to close a buffer
nmap <leader>l :bnext<CR>                   " Move to the next buffer
nmap <leader>h :bprevious<CR>               " Move to the previous buffer
map <F7> mzgg=G`z                           " Reindent the entire file

"alternate keys for indenting/unindenting
"nnoremap <Tab> >>
"nnoremap <S-Tab> <LT><LT>
"vnoremap <Tab> >
"vnoremap <S-Tab> <LT>




" --------------------------------------------
"                  Colors
" --------------------------------------------
au BufRead,BufNewFile *.m set filetype=matlab


"if filereadable(expand("~/.vimrc_background"))
    "let base16colorspace=256 " Access colors present in 256 colorspace
    "source ~/.vimrc_background
"endif
"let base16colorspace=256  " Access colors present in 256 colorspace
syntax enable 

if has('gui_running') 
    set background=light
    colorscheme macvim
else 
    set background=dark
    colorscheme zeno
endif 
"highlight ColorColumn ctermbg=235
"highlight ColorColumn ctermbg=magenta "set to whatever you like
"call matchadd('ColorColumn', '\%81v', 100) "set column nr
"highlight OverLength ctermbg=235 ctermfg=235
"match OverLength /\%81v.\+/




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
let g:airline_section_z = '%c'                      " Make the right side empty
let g:airline#extensions#tabline#enabled = 1       " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'   " Show just the filename
let g:airline_theme = 'kolor'    "'understated'

" --------------------------------------------
"               Vim Markdown
" --------------------------------------------
let g:vim_markdown_math=1                        " Enable LaTeX math
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0

" --------------------------------------------
"               Python Syntax
" --------------------------------------------
let python_highlight_all=1 " enable all Python syntax highlighting features

" --------------------------------------------
"               YouCompleteMe
" --------------------------------------------
set completeopt-=preview                       " remove documentation preview
set pumheight=20                               " Limit popup menu height

let g:ycm_show_diagnostics_ui = 1
let g:ycm_enable_diagnostic_signs = 0 
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_global_ycm_extra_conf = '~/dotfiles/vim/.ycm_extra_conf.py'
let g:ycm_always_populate_location_list = 0 "diags
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1

nnoremap <Leader>[ :YcmCompleter GetDoc<CR>    " non-recursively map '\+[' to go to documentation
nnoremap <Leader>] :pclose<CR>                 " non-recursively map '\+]' to close preview windows 

" --------------------------------------------
"               VimLab
" --------------------------------------------
let g:matlab_vimlab_vertical=1

" --------------------------------------------
"               indentLine
" --------------------------------------------
let g:indentLine_color_dark = 1 " (default: 2)
let g:indentLine_color_term = 238 "252 237

" ----------------------------------------
"               VimTeX
" ----------------------------------------
let g:vimtex_latexmk_continuous=0
let g:vimtex_latexmk_callback=0
let g:vimtex_latexmk_build_dir = './build'
let g:vimtex_view_general_viewer = 'open'
let g:vimtex_view_general_options = '@pdf'

nnoremap <leader>c :VimtexCompileSS<CR> 
nnoremap <leader>v :VimtexView<CR>
nnoremap <leader>tc :VimtexClean<CR>

" ----------------------------------------
"               Vim-TeX-Fold
" ----------------------------------------
"a = conceal accents/ligatures
"d = conceal delimiters
"g = conceal Greek
"m = conceal math symbols
"s = conceal superscripts/subscripts
let g:tex_conceal= ''
let g:tex_fold_enable=0
let g:tex_fold_additional_envs = ['circuitikz', 'tabular', 'tabu', 'Karnaugh']

" ----------------------------------------
"               Vim-Notes
" ----------------------------------------
let g:notes_directories = ['~/Google\ Drive/MEDIC\ Lab\ Projects/Epilepsy\ Monitoring/docs/']  " '~/Google\ Drive/Notes',
let g:notes_suffix = '.txt'

" Helpful Links
" http://www.vex.net/~x/python_and_vim.html
