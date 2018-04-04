set nocompatible              " be iMproved, required for vundle

" Helpful Links
" http://www.vex.net/~x/python_and_vim.html
" set the runtime path to include Vundle and initialize
set rtp+=~/dotfiles/vim/
set noeb vb t_vb=
 
"   VUNDLE
set rtp+=~/.vim/bundle/Vundle.vim
filetype off                  " required
call vundle#begin()
    Plugin 'alvan/vim-closetag'
    Plugin 'chrisbra/Colorizer'
    Plugin 'VundleVim/Vundle.vim'       " required
    Plugin 'Yggdroot/indentLine'
    Plugin 'jpalardy/vim-slime'         " tmux integration
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'tpope/vim-surround'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}
    Plugin 'hdima/python-syntax'
    Plugin 'lepture/vim-jinja'
    Plugin 'octol/vim-cpp-enhanced-highlight'
    Plugin 'plasticboy/vim-markdown'
    Plugin 'suan/vim-instant-markdown'
    Plugin 'lervag/vimtex'
    Plugin 'matze/vim-tex-fold'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'pangloss/vim-javascript'
    Plugin 'nvie/vim-flake8'
    Plugin 'scrooloose/nerdtree'
    Plugin 'Rykka/riv.vim'
call vundle#end()                         
filetype plugin indent on						" required

"source ~/.vim/bundle/vim-ipython/ftplugin/python/ipy.vim
set term=screen-256color        " define terminal. should be the same as in .tmux.conf.  previously 'xterm-256color'
set t_Co=256                    " Enable 256 colors
set encoding=utf-8 
set termencoding=utf-8
set fileencoding=utf-8
set lazyredraw
set backspace=indent,eol,start          " Allow backspace in insert mode
set laststatus=2                        " Always show the status bar
set autoread                            " Reload files changed outside vim
set hidden                              " allows buffers to be hidden if they are modified
set pastetoggle=<c-a>                   " Paste without auto indent 
set nowrap                              " Don't wrap lines
set clipboard=unnamed                   " Use the system clipboard
set ruler                               " Cursor position
set autowrite                           " Automatically save file
set showmatch                           " Show matching brackets
set timeoutlen=900 ttimeoutlen=5				" switch modes faster (decrease esc/caps-lock lag)  
set nohlsearch	                        " Don't continue to highlight searched phrases.
set incsearch							" But do highlight as you type your search.
set ignorecase					        " Make searches case-insensitive.
set cole=2
set foldmethod=indent
set nocursorline						" dont show a cursor line
set ttyfast								" Send more characters for redraws
set mouse=a								" Enable Mouse in all modes
set modeline							" enable filetype variable
set autoindent
set smartindent
set softtabstop=4						" allow vim to see spaces as a tab
set tabstop=4							" show existing tabs using 4 spaces
set shiftwidth=4						" indent width for '>'
set expandtab                           " on pressing tab insert 4 spaces
set noshowmode                      	" Hide the default mode text (e.g. -- INSERT -- below the statusline)
set completeopt-=preview                " remove documentation preview
set pumheight=20                        " Limit popup menu height
"set colorcolumn=80                 	" show line past 80 cols



let mapleader="\<Space>"                  " change the mapleader from '\' to space
nmap ; :
nnoremap	<leader>r source ~/.vimrc<CR>   
nmap        <leader>l :bnext<CR>                   " Move to the next buffer
nmap	    <leader>h :bprevious<CR>               " Move to the previous buffer
map			<F1> :setlocal spell! spelllang=en_us<CR> " fix spelling
map			<F2> mzgg=G`z                             " Reindent the entire file

map <leader>t :NERDTreeToggle<CR>


"   Colors
syntax enable 
if has("gui_macvim")
    set guifont=Hack\ Regular:h13
endif

if has('gui_running') 
    colorscheme darkZ
else 
    set background=dark
    colorscheme genio
    "colorscheme zeno2
    "colorscheme DarkDefault
endif 

" disable bell
autocmd! GUIEnter * set vb t_vb=     

" specific language settings
 
" filenames 
autocmd BufRead,BufNewFile *.py 
            \ set softtabstop=4 tabstop=4 shiftwidth=4 
autocmd BufRead,BufNewFile *.cpp 
            \ set softtabstop=2 tabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.sh          
            \ let g:is_bash=1 | set filetype=sh
autocmd BufRead,BufNewFile *.h          
            \ set softtabstop=2 tabstop=2 shiftwidth=2 expandtab
autocmd BufRead,BufNewFile *.html        
            \ set  foldmethod=indent softtabstop=2 tabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.m           
            \ set filetype=matlab
autocmd BufRead,BufNewFile *.json
            \ set conceallevel=0
autocmd BufRead,BufNewFile *.ino
            \ set softtabstop=2 tabstop=2 shiftwidth=2





augroup python
    autocmd!
    autocmd FileType python 
                \ syn keyword pythonSelf self
                \ | highlight def link pythonSelf Type
augroup end

autocmd FileType * call <SID>def_base_syntax() " autocmd Syntax may be better
function! s:def_base_syntax()
    "\|\[\|\]\
    syntax match commonOperator "\(+\|=\|-\|\^\|\*\)"
    syntax match baseDelimiter "\(\.\|&\|}\|{\||\)"
    syntax match curlyBraces "\(\}\|{\|_\)"
    hi curlyBraces ctermfg=43
    hi link commonOperator SpecialKey
    hi link baseDelimiter SpecialChar
endfunction


"		Vim-Slime
xmap    <leader><tab>   <Plug>SlimeRegionSend
nmap	<leader><tab>   <Plug>SlimeLineSend
nmap	<leader>p<tab>  <Plug>SlimeParagraphSend
nmap	<leader>N       <Plug>SlimeConfig
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}
let g:slime_python_ipython = 1
let g:slime_dont_ask_default = 1
let g:slime_preserve_curpos = 0



"   Vim-Airline (Powerline)
"let g:airline_section_z = '%c'                     " Make the right side empty
let g:airline_powerline_fonts = 1                  " Allows for special symbols
let g:airline#extensions#tabline#enabled = 1       " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'   " Show just the filename
let g:airline_theme =  'raven'       "'kolor', 'understated'



" Instant Markdown Preview
let g:instant_markdown_autostart = 0


" indentLine
let g:indentLine_color_dark = 1 
let g:indentLine_color_term = 0


" Python Syntax
let python_highlight_all=1 " enable all Python syntax highlighting features

"   Vim Markdown
let g:vim_markdown_math=1                        " Enable LaTeX math
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0


"   YouCompleteMe
" non-recursively map '\+[' to go to documentation
nnoremap 	<Leader>[	:YcmCompleter GetDoc<CR>    

" non-recursively map '\+]' to close preview windows 
nnoremap 	<Leader>]	:pclose<CR>                 

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_server_log_level='debug'
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_server_use_vim_stdout = 0
let g:ycm_server_keep_logfiles = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1


"   VimTeX
nnoremap	<leader>c	:VimtexCompileSS<CR> 
nnoremap	<leader>v	:VimtexView<CR>
nnoremap	<leader>tc	:VimtexClean<CR>

let g:vimtex_latexmk_continuous=0
let g:vimtex_latexmk_callback=0
let g:vimtex_latexmk_build_dir = './build'
let g:vimtex_view_general_viewer = 'open'
let g:vimtex_view_general_options = '@pdf'

"  Vim-TeX-Fold
" ------------------------------------------------
" a = accents/ligaturea, d = delimiters, g = Greek, 
" m =  math symbols, s = superscripts/subscripts
" ------------------------------------------------
let g:tex_conceal= 'g'
let g:tex_fold_enable=0
let g:tex_fold_additional_envs = ['circuitikz', 'tabular', 'tabu', 'Karnaugh', 'multicols', 'itemize', 'tikzpicture', 'question']


