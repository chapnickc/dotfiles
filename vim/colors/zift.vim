" Vim color file
" Zeno
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="zift"

hi Normal           ctermfg=255     ctermbg=236     cterm=none         
hi NonText          ctermfg=51      ctermbg=236     cterm=bold          
hi CursorIM         ctermfg=15      ctermbg=214     cterm=none         
hi Conceal          ctermfg=15      ctermbg=7       cterm=none           
hi CursorLine       ctermfg=none    ctermbg=none    cterm=none        


" -----------------------------------------
"              Sytnax
" -----------------------------------------
hi Define           ctermfg=201      ctermbg=none    cterm=none          
hi PreProc          ctermfg=207    cterm=bold 
hi Statement        ctermfg=39      cterm=bold 
hi Type		        ctermfg=39     cterm=bold 
hi Function         ctermfg=11      cterm=bold     
hi Repeat           ctermfg=41     cterm=bold 
hi Operator         ctermfg=41     cterm=bold   
hi Conditional      ctermfg=13     cterm=bold     
hi Special          ctermfg=13     cterm=bold   
hi Exception        ctermfg=3     cterm=bold   
hi Constant         ctermfg=197     cterm=none       
hi Comment          ctermfg=245      cterm=none     
hi Boolean          ctermfg=200     cterm=bold       
hi Number           ctermfg=47      cterm=none        
hi Label            ctermfg=190     cterm=bold         
hi Identifier       ctermfg=252     cterm=none          
hi SpecialChar      ctermfg=197      ctermbg=none    cterm=none      
hi SpecialKey       ctermfg=243      ctermbg=none    cterm=bold       


hi htmlBold         ctermfg=1                       cterm=bold 
hi htmlItalic       ctermfg=1                       cterm=italic 


"-----------------------------------------
"       Additional Highlights
"----------------------------------------

hi Directory        ctermfg=152     ctermbg=235     cterm=bold        
hi ErrorMsg         ctermfg=255     ctermbg=52      term=standout       
hi Folded           ctermfg=243     ctermbg=236     term=standout      
hi IncSearch        ctermfg=33      ctermbg=247     cterm=reverse     
hi MatchParen       ctermfg=75      ctermbg=none    cterm=bold          
hi MoreMsg          ctermfg=29                      cterm=bold      
hi ModeMsg          ctermfg=38                      cterm=bold     
hi Pmenu            ctermfg=45      ctermbg=237     cterm=none      
hi PmenuSel         ctermfg=10      ctermbg=244     cterm=none      
hi Question         ctermfg=146                     cterm=bold
hi Search           ctermfg=58      ctermbg=108     term=reverse        
hi StatusLine       ctermfg=17      ctermbg=38      term=bold,reverse 
hi StatusLineNC     ctermfg=23      ctermbg=31      cterm=reverse 
hi Title            ctermfg=46                      term=bold     
hi VertSplit        ctermfg=244     ctermbg=60      term=reverse  
hi Visual                           ctermbg=25      term=reverse  
hi WarningMsg       ctermfg=3       ctermbg=238     term=standout 
hi WildMenu         ctermfg=16      ctermbg=226     term=standout 
hi Matchmaker       ctermfg=16      ctermbg=231
hi SignColumn       ctermfg=16      ctermbg=235
hi DiffAdd          ctermfg=11      ctermbg=22
hi DiffDelete       ctermfg=3       ctermbg=88
hi DiffChange       ctermfg=12      ctermbg=25
hi DiffText         ctermfg=85      ctermbg=32      cterm=bold 
hi GitGutterAdd     ctermfg=3       ctermbg=28      cterm=bold
hi GitGutterChange  ctermfg=7       ctermbg=26      cterm=bold
hi GitGutterDelete  ctermfg=2       ctermbg=1       cterm=bold


