set nocompatible              " be iMproved, required for vundle

" Helpful Links
" http://www.vex.net/~x/python_and_vim.html
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
    Plugin 'tpope/vim-surround'
call vundle#end()                         

filetype plugin indent on						" required
    
set term=screen-256color                " define terminal. should be the same as in .tmux.conf.  previously 'xterm-256color'
set t_Co=256                            " Enable 256 colors
set encoding=utf-8 
set termencoding=utf-8
set fileencoding=utf-8
set number                              " Show line numbers
set lazyredraw
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
set timeoutlen=900 ttimeoutlen=5				" switch modes faster (decrease esc/caps-lock lag)  
set nohlsearch	                        " Don't continue to highlight searched phrases.
set incsearch														" But do highlight as you type your search.
set ignorecase													" Make searches case-insensitive.
set cole=2
set foldmethod=manual
set nocursorline												" dont show a cursor line
set ttyfast															" Send more characters for redraws
set mouse=a															" Enable Mouse in all modes
set modeline														" enable filetype variable
set smartindent
set autoindent
set softtabstop=2												" allow vim to see spaces as a tab
set tabstop=2														"set tab to indent 4 spaces
set shiftwidth=2												"indent width for autoindent
set noshowmode                      		" Hide the default mode text (e.g. -- INSERT -- below the statusline)
"set colorcolumn=80                 		" show line past 80 cols
set completeopt-=preview                       " remove documentation preview
set pumheight=20                               " Limit popup menu height



let mapleader="\<Space>"                  " change the mapleader from '\' to space

nnoremap <leader>r source ~/.vimrc<CR>   
nmap <leader>l :bnext<CR>                   " Move to the next buffer
nmap <leader>h :bprevious<CR>               " Move to the previous buffer


map <F7> mzgg=G`z                             " Reindent the entire file
map <F1> :setlocal spell! spelllang=en_us<CR> " fix spelling

xmap <leader><tab> <Plug>SlimeRegionSend
nmap <leader><tab> <Plug>SlimeLineSend
nmap <leader>p<tab> <Plug>SlimeParagraphSend
nmap <leader>N     <Plug>SlimeConfig

nnoremap <leader>c :VimtexCompileSS<CR> 
nnoremap <leader>v :VimtexView<CR>
nnoremap <leader>tc :VimtexClean<CR>


nnoremap <Leader>[ :YcmCompleter GetDoc<CR>    " non-recursively map '\+[' to go to documentation
nnoremap <Leader>] :pclose<CR>                 " non-recursively map '\+]' to close preview windows 



" --------------------------------------------
"                  Colors
" --------------------------------------------
syntax enable 

if has('gui_running') 
    colorscheme base16-eighties
else 
    set background=dark
    colorscheme zeno
endif 

" disable bell
autocmd! GUIEnter * set vb t_vb=    
au BufRead,BufNewFile *.m set filetype=matlab
autocmd BufRead,BufNewFile *.asm :set syntax=avr8bit


autocmd FileType * call <SID>def_base_syntax() " autocmd Syntax may be better
function! s:def_base_syntax()
  syntax match commonOperator "\(+\|=\|-\|\^\|\*\)"
  syntax match baseDelimiter "\."
  hi link commonOperator Define
  hi link baseDelimiter SpecialChar
endfunction


augroup python
	autocmd!
	autocmd FileType python 
				\ syn keyword pythonSelf self
				\ | highlight def link pythonSelf Type
augroup end


"		Vim-Slime
let g:slime_target = "tmux"
let g:slime_paste_file = "~/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}
let g:slime_dont_ask_default = 1
let g:slime_python_ipython = 1


"   Vim-Airline (Powerline)
let g:airline_powerline_fonts = 1                  " Allows for special symbols
let g:airline_section_z = '%c'                      " Make the right side empty
let g:airline#extensions#tabline#enabled = 1       " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'   " Show just the filename
let g:airline_theme =  'simple'       "'kolor', 'understated'


"   indentLine
let g:indentLine_color_dark = 1 
let g:indentLine_color_term = 238 
let g:indentLine_color_dark = 1 
let g:indentLine_color_term = 238 


"		Python Syntax
let python_highlight_all=1 " enable all Python syntax highlighting features

"   Vim Markdown
let g:vim_markdown_math=1                        " Enable LaTeX math
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0


"   YouCompleteMe

let g:ycm_max_diagnostics_to_display=10
let g:ycm_server_log_level='error'
let g:ycm_global_ycm_extra_conf = '~/dotfiles/vim/.ycm_extra_conf.py'
let g:ycm_always_populate_location_list = 0 "diags

let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1



"   VimTeX
let g:vimtex_latexmk_continuous=0
let g:vimtex_latexmk_callback=0
let g:vimtex_latexmk_build_dir = './build'
let g:vimtex_view_general_viewer = 'open'
let g:vimtex_view_general_options = '@pdf'


"  Vim-TeX-Fold
" ------------------------------------------------
" a =  accents/ligatures	d =  delimiters
"	g =  Greek							m =  math symbols
"	s =superscripts/subscripts
" ------------------------------------------------
let g:tex_conceal= 'g'
let g:tex_fold_enable=0
let g:tex_fold_additional_envs = ['circuitikz', 'tabular', 'tabu', 'Karnaugh', 'multicols', 'itemize', 'tikzpicture']
