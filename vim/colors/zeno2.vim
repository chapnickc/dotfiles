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

let g:colors_name="zeno2"

" terminal colors

hi Normal           cterm=none      ctermbg=235     ctermfg=254

hi CursorIM         cterm=none      ctermfg=15      ctermbg=214
hi Conceal         cterm=none      ctermfg=15      ctermbg=214
hi CursorLine       cterm=NONE      ctermbg=NONE    ctermfg=NONE
hi Define           cterm=none      ctermbg=none    ctermfg=10
hi Directory        cterm=bold      ctermbg=235     ctermfg=152 
hi ErrorMsg         term=standout   ctermfg=255     ctermbg=52
hi Folded           term=standout   ctermbg=236     ctermfg=247
hi IncSearch        cterm=reverse   ctermfg=58      ctermbg=187 
hi Keyword          cterm=none      ctermbg=none    ctermfg=203
hi MatchParen       cterm=bold      ctermbg=none    ctermfg=75
hi MoreMsg          term=bold       cterm=bold      ctermfg=29 
hi ModeMsg          term=bold       cterm=bold      ctermfg=38 

hi NonText          cterm=bold      ctermbg=235     ctermfg=226  
hi Pmenu            cterm=none      ctermbg=237     ctermfg=45
hi PmenuSel         cterm=none      ctermbg=244     ctermfg=10
hi Question         term=standout   cterm=bold      ctermfg=146 
hi Search           term=reverse    ctermbg=108     ctermfg=58      
hi StatusLine       term=bold,reverse cterm=bold    ctermfg=17 ctermbg=38 
hi StatusLineNC     term=reverse    cterm=bold ctermfg=23 ctermbg=31 
hi Title            term=bold       ctermfg=46 
hi VertSplit        term=reverse    ctermfg=244 ctermbg=60 
hi Visual          term=reverse     ctermbg=25
"ctermfg=201 
"hi VisualNOS        term=bold,underline cterm=bold,underline
hi WarningMsg       term=standout ctermbg=238 ctermfg=3
hi WildMenu         term=standout ctermfg=16 ctermbg=226 


hi Matchmaker       ctermfg=16  ctermbg=231
hi SignColumn       ctermfg=16  ctermbg=235
hi DiffAdd        ctermfg=11 ctermbg=22
hi DiffDelete     ctermfg=3 ctermbg=88
hi DiffChange     ctermfg=12 ctermbg=25
hi DiffText       term=bold cterm=bold ctermfg=85 ctermbg=32
hi GitGutterAdd     ctermfg=3   ctermbg=28 cterm=bold
hi GitGutterChange  ctermfg=7   ctermbg=26 cterm=bold
hi GitGutterDelete  ctermfg=2   ctermbg=1 cterm=bold

hi SpecialChar      cterm=none      ctermbg=none    ctermfg=39
hi SpecialKey       term=bold       ctermbg=none    ctermfg=39

" -----------------------------------------
"              Sytnax
" -----------------------------------------
"  " 87 good tealish blue
"  117 -darker blue
"  
hi PreProc        term=bold cterm=bold ctermfg=208
hi Keyword		    term=none cterm=none ctermfg=208
hi Statement      term=bold cterm=bold ctermfg=41
hi Type		        term=none cterm=bold ctermfg=41

hi Function       term=bold cterm=bold ctermfg=39
hi Repeat		      term=bold cterm=bold ctermfg=227
hi Operator		    term=bold cterm=bold ctermfg=227
hi Conditional	  term=bold cterm=bold ctermfg=227
hi Special		    term=bold cterm=bold ctermfg=227
hi Exception	    term=none cterm=bold ctermfg=227

hi Comment		    term=none cterm=none ctermfg=31

hi Constant		    term=none cterm=none ctermfg=249
hi Boolean		    term=bold cterm=bold ctermfg=213
hi Number		      term=none cterm=none ctermfg=10
hi Label		      term=none cterm=bold ctermfg=190
hi Identifier     term=none cterm=none ctermfg=252


"highlight ColorColumn ctermbg=235
"highlight ColorColumn ctermbg=magenta "set to whatever you like
"call matchadd('ColorColumn', '\%81v', 100) "set column nr
"highlight OverLength ctermbg=235 ctermfg=235
"match OverLength /\%81v.\+/

