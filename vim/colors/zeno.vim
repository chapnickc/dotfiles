" Vim color file
" Zeno

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
		syntax reset
    endif
endif

let g:colors_name="zeno"

" terminal colors
hi CursorLine       cterm=NONE      ctermbg=NONE ctermfg=NONE
hi CursorLineNr     term=bold       ctermbg=236 ctermfg=41
hi LineNr           ctermbg=235     ctermfg=25
hi Directory        term=bold       ctermfg=152 
hi ErrorMsg         term=standout   ctermfg=231 ctermbg=203 
hi Folded           term=standout   ctermfg=2 ctermbg=0 
hi IncSearch        term=reverse    cterm=reverse ctermfg=58 ctermbg=187 
hi MoreMsg          term=bold       cterm=bold ctermfg=29 
hi ModeMsg          term=bold       cterm=bold ctermfg=38 
hi Normal           ctermbg=235     ctermfg=251
hi NonText          term=bold       cterm=bold ctermfg=207 ctermbg=233
hi Pmenu            ctermbg=237 ctermfg=12
hi PmenuSel         ctermbg=55  ctermfg=46
hi Question         term=standout cterm=bold ctermfg=146 
hi Search           term=reverse ctermfg=58 ctermbg=108 
hi SpecialKey       term=bold ctermfg=115 
hi StatusLine       term=bold,reverse cterm=bold ctermfg=17 ctermbg=38 
hi StatusLineNC     term=reverse cterm=bold ctermfg=23 ctermbg=31 
hi Title            term=bold ctermfg=46 
hi VertSplit        term=reverse ctermfg=244 ctermbg=60 
hi Visual           term=reverse ctermfg=27 ctermbg=240
hi VisualNOS        term=bold,underline cterm=bold,underline 
hi WarningMsg       term=standout ctermfg=209 
hi WildMenu         term=standout ctermfg=16 ctermbg=226 


hi DiffAdd        ctermfg=11 ctermbg=22
hi DiffDelete     ctermfg=3 ctermbg=88
hi DiffChange     ctermfg=12 ctermbg=25
hi DiffText       term=bold cterm=bold ctermfg=85 ctermbg=32

hi Matchmaker        ctermfg=16 ctermbg=32
hi SignColumn        ctermbg=234         
hi GitGutterAdd      ctermfg=3 ctermbg=28 cterm=bold
hi GitGutterChange   ctermfg=7 ctermbg=26 cterm=bold
hi GitGutterDelete   ctermfg=2 ctermbg=1 cterm=bold


" -----------------------------------------
"              Sytnax
"matlab end = conditional
" -----------------------------------------
hi Statement        term=bold cterm=none ctermfg=202
hi Constant		    term=bold cterm=none ctermfg=226
hi Function         term=bold cterm=bold ctermfg=105
hi Special		    term=bold cterm=bold ctermfg=27
hi Operator		    term=bold cterm=bold ctermfg=201
hi PreProc          term=bold cterm=none ctermfg=201
hi Repeat		    term=bold cterm=bold ctermfg=226
hi Conditional	    term=bold cterm=bold ctermfg=226
hi Identifier       term=none cterm=none ctermfg=50
hi Comment		    ctermfg=69
hi Number		    ctermfg=84
hi Type		        term=none cterm=bold ctermfg=47
hi Keyword		    term=none cterm=none ctermfg=75


"hi Underlined   guifg=#49f95f gui=none
"hi Error        guibg=#408452
"hi Exception	guifg=#dfff80


