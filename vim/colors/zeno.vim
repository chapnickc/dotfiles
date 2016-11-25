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

hi CursorIM         cterm=none      ctermfg=15      ctermbg=214
hi Conceal         cterm=none      ctermfg=15      ctermbg=214
hi CursorLine       cterm=NONE      ctermbg=NONE    ctermfg=NONE
hi CursorLineNr     cterm=bold      ctermbg=236     ctermfg=202
hi LineNr           cterm=none      ctermbg=235     ctermfg=25
hi Define           cterm=none      ctermbg=none    ctermfg=82
hi Directory        cterm=bold      ctermbg=235     ctermfg=152 
hi ErrorMsg         term=standout   ctermfg=255     ctermbg=52
hi Folded           term=standout   ctermfg=2       ctermbg=0 
hi IncSearch        cterm=reverse   ctermfg=58      ctermbg=187 
hi Keyword          cterm=none      ctermbg=none    ctermfg=203
hi MatchParen       cterm=bold      ctermbg=none    ctermfg=27
hi MoreMsg          term=bold       cterm=bold      ctermfg=29 
hi ModeMsg          term=bold       cterm=bold      ctermfg=38 
hi Normal           cterm=none      ctermbg=235     ctermfg=15
hi NonText          cterm=bold      ctermfg=51      ctermbg=234
hi Pmenu            cterm=none      ctermbg=237     ctermfg=12
hi PmenuSel         cterm=none      ctermbg=55      ctermfg=46
hi Question         term=standout cterm=bold ctermfg=146 
hi Search           term=reverse ctermfg=58 ctermbg=108 
hi SpecialKey       term=bold ctermfg=115 
hi StatusLine       term=bold,reverse cterm=bold ctermfg=17 ctermbg=38 
hi StatusLineNC     term=reverse cterm=bold ctermfg=23 ctermbg=31 
hi Title            term=bold ctermfg=46 
hi VertSplit        term=reverse ctermfg=244 ctermbg=60 
hi Visual           term=reverse ctermfg=27 ctermbg=240
hi VisualNOS        term=bold,underline cterm=bold,underline
hi WarningMsg       term=standout ctermbg=291ctermfg=209 
hi WildMenu         term=standout ctermfg=16 ctermbg=226 

hi DiffAdd        ctermfg=11 ctermbg=22
hi DiffDelete     ctermfg=3 ctermbg=88
hi DiffChange     ctermfg=12 ctermbg=25
hi DiffText       term=bold cterm=bold ctermfg=85 ctermbg=32

hi Matchmaker        ctermfg=16 ctermbg=231
hi SignColumn        ctermfg=16 ctermbg=235
hi GitGutterAdd      ctermfg=3 ctermbg=28 cterm=bold
hi GitGutterChange   ctermfg=7 ctermbg=26 cterm=bold
hi GitGutterDelete   ctermfg=2 ctermbg=1 cterm=bold

hi SpecialChar    cterm=NONE ctermfg=197  ctermbg=NONE
"hi SpecialComment ctermfg=66  ctermbg=NONE gui=NONE guibg=bg cterm=NONE
"hi SpecialKey     ctermfg=237 ctermbg=NONE cterm=NONE

"hi Underlined   guifg=#49f95f gui=none
"hi Error        guibg=#408452
"
"hi TabLineFill  ctermfg=2 ctermbg=1 cterm=bold
"hi TabLine      ctermfg=2 ctermbg=1 cterm=bold  


" -----------------------------------------
"              Sytnax
"matlab end = conditional
" -----------------------------------------
hi Constant		    term=bold cterm=none ctermfg=123  
hi Special		    term=bold cterm=bold ctermfg=33
hi Boolean		    term=bold cterm=bold ctermfg=197
hi Conditional	    term=bold cterm=bold ctermfg=226
hi Repeat		    term=bold cterm=bold ctermfg=226
hi Function         term=bold cterm=bold ctermfg=75
hi Statement        term=bold cterm=bold ctermfg=48
hi PreProc          term=bold cterm=bold ctermfg=197
hi Operator		    term=bold cterm=bold ctermfg=226
hi Identifier       term=none cterm=none ctermfg=252
hi Exception	    term=none cterm=bold ctermfg=226
hi Comment		    term=none cterm=none ctermfg=247
hi Number		    term=none cterm=none ctermfg=201
hi Type		        term=none cterm=bold ctermfg=48
hi Keyword		    term=none cterm=none ctermfg=75
hi Label		    term=none cterm=bold ctermfg=190

