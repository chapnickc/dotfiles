syn keyword pythonThis cls self
syn match pythonChain '\v(^|\W)(cls|self)\zs(\s*\.\s*\h\w*)+' contains=pythonMember
syn match pythonMember '\h\w*' contained

hi link pythonThis Comment
hi link pythonMember Function


