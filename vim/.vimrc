set clipboard+=unnamedplus
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'alvan/vim-closetag'
    Plugin 'VundleVim/Vundle.vim'       " required

    Plugin 'tpope/vim-surround'
    Plugin 'Yggdroot/indentLine'

    Plugin 'jpalardy/vim-slime'         " tmux integration
    Plugin 'rafi/awesome-vim-colorschemes'
    Plugin 'norcalli/nvim-colorizer.lua'

    Plugin 'lervag/vimtex'
    Plugin 'matze/vim-tex-fold'

    "Plugin 'github/copilot.vim'
    "Plugin 'Exafunction/codeium.nvim'
    Plugin 'Exafunction/windsurf.nvim'

    Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plugin 'junegunn/fzf.vim'
    Plugin 'ibhagwan/fzf-lua' " also keeping regular fzf around for now

    Plugin 'tpope/vim-fugitive'
    Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    "Plugin 'nvim-treesitter/nvim-treesitter-context'

    Plugin 'nvim-lua/plenary.nvim'
    Plugin 'nvim-neo-tree/neo-tree.nvim'
    Plugin 'MunifTanjim/nui.nvim'

    Plugin 'neovim/nvim-lspconfig'
    Plugin 'hrsh7th/cmp-nvim-lsp'
    Plugin 'hrsh7th/cmp-buffer'
    Plugin 'hrsh7th/cmp-path'
    Plugin 'hrsh7th/cmp-cmdline'
    Plugin 'hrsh7th/nvim-cmp'

    Plugin 'MeanderingProgrammer/render-markdown.nvim'
    Plugin 'nvim-tree/nvim-web-devicons'

    Plugin 'epwalsh/obsidian.nvim'

    Plugin 'sindrets/diffview.nvim'
    Plugin 'NeogitOrg/neogit'

    Plugin 'lewis6991/gitsigns.nvim'
    Plugin 'APZelos/blamer.nvim'
    Plugin 'iamcco/markdown-preview.nvim'
    Plugin 'chomosuke/typst-preview.nvim', {'tag': 'v1.*'}
call vundle#end()

filetype plugin indent on						" required
syntax enable

if !has('nvim')
    set term=screen-256color        " define terminal. should be the same as in .tmux.conf.  previously 'xterm-256color'
    set termencoding=utf-8
endif

set t_Co=256                    " Enable 256 colors
set encoding=utf-8
set fileencoding=utf-8
set lazyredraw
set backspace=indent,eol,start          " Allow backspace in insert mode
set laststatus=2                        " Always show the status bar
set autoread                            " Reload files changed outside vim
set hidden                              " allows buffers to be hidden if they are modified
"set pastetoggle=<F3>                   " Paste without auto indent
set nowrap
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
"set noshowmode                      	" Hide the default mode text (e.g. -- INSERT -- below the statusline)
"set completeopt-=preview                " remove documentation preview
set pumheight=20                        " Limit popup menu height
set noic                                " Don't ignore case
"set relativenumber
"set colorcolumn=80                 	" show line past 80 cols
"set conceallevel=0
set termguicolors

"   Colors

set background=dark
colorscheme focuspoint "Iceberg happy_hacking
set guifont=Hack\ Regular:h13





let mapleader="\<Space>"                  " change the mapleader from '\' to space
"nmap ; :
nnoremap	<leader>r source ~/.vimrc<CR>
nmap        <leader>l :bnext<CR>                   " Move to the next buffer
nmap	    <leader>h :bprevious<CR>               " Move to the previous buffer
map			<F1> :setlocal spell! spelllang=en_us<CR> " fix spelling
map			<F2> mzgg=G`z                             " Reindent the entire file
map			<leader>ot :ObsidianToday<CR>
map			<leader>os :ObsidianSearch<CR>

map <leader>e :Neotree toggle<CR>
nmap <leader>cp :let @+ = expand("%")<CR>



"   YouCompleteMe
nnoremap <Leader>[	:lua vim.lsp.buf.hover()<CR>
nnoremap <Leader>]	:pclose<CR>
nnoremap <leader>a :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>g :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>G :lua vim.lsp.buf.references()<CR>

let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_show_diagnostics_ui = 0
let g:ycm_autoclose_preview_window_after_completion=1


"		Vim-Slime
xmap    <leader><tab>   <Plug>SlimeRegionSend
nmap	<leader><tab>   <Plug>SlimeLineSend
nmap	<leader>p<tab>  <Plug>SlimeParagraphSend
nmap	<leader>N       <Plug>SlimeConfig
let g:slime_target = "tmux"
let g:slime_paste_file = expand("$HOME/.slime_paste")
let g:slime_paste_file = tempname()
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}
let g:slime_python_ipython = 1
let g:slime_dont_ask_default = 1
let g:slime_preserve_curpos = 0
let g:slime_bracketed_paste = 1



"   Vim-Airline (Powerline)
"let g:airline_section_z = '%c'                     " Make the right side empty
"let g:airline_section_x = ''
let g:airline_powerline_fonts = 1                  " Allows for special symbols
let g:airline#extensions#tabline#enabled = 1       " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t'   " Show just the filename
let g:airline_theme =  'raven'       "'kolor', 'understated'



" indentLine
let g:indentLine_color_dark = 1
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#555555' 
let g:indentLine_setConceal = 0



"   VimTeX
nnoremap	<leader>tc	:VimtexCompileSS<CR>
nnoremap	<leader>tv	:VimtexView<CR>
nnoremap	<leader>tx	:VimtexClean<CR>

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

" disable bell
"autocmd! GUIEnter * set vb t_vb=

" filenames
autocmd BufRead,BufNewFile *.json
      \ set conceallevel=0


autocmd FileType typescript,javascript,typescriptreact,javascriptreact setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

autocmd FileType * call <SID>def_base_syntax() " autocmd Syntax may be better
function! s:def_base_syntax()
    syntax match commonOperator "\(+\|=\|-\|\^\|\*\)"
    syntax match baseDelimiter "\(\.\|&\|}\|{\||\)"
    syntax match curlyBraces "\(\}\|{\|_\)"
      hi curlyBraces ctermfg=43
      hi link commonOperator SpecialKey
      hi link baseDelimiter SpecialChar
endfunction



hi Normal guibg=NONE ctermbg=NONE
hi StatusLine guibg=#333333 guifg=#c9c9c9
hi EndOfBuffer guibg=NONE  guifg=#28aa7c
hi Comment guibg=NONE  guifg=#888888
hi NonText guibg=NONE  guifg=#777777


"
" FZF
"
nnoremap <leader>r :lua require("fzf-lua").grep({ search = "", winopts={preview={hidden=true}}})<CR>
nnoremap <leader>f :FzfLua files winopts.preview.hidden=true<CR>
nnoremap <leader>y :FzfLua oldfiles<CR>
nnoremap <leader><esc> :FzfLua buffers winopts.preview.hidden=true<CR>

let g:fzf_history_dir = '~/.config/local/share/fzf-vim-history'
let g:blamer_enabled = 1
let g:blamer_date_format = '%y/%m/%d %H:%M'

":lua <<EOF EOF
