if exists("b:current_syntax")
    finish
endif
setlocal suffixesadd=.jrnl

syntax region jcomment start="^\s*#" end="$" keepend
syntax region jtitle start=/^\[\d\{4}-\d\d-\d\dT\d\d:\d\d\]/ end=/$/ contains=jyear,jtag
syntax match jyear /\d\{4}-\d\d-\d\dT\d\d:\d\d/ contained
syntax match jtag "@.\{-}\w\+" contained

highlight def link jcomment Comment
highlight def link jtag Keyword
highlight def link jyear String
highlight def link jtitle Identifier

let b:current_syntax = "jrnl"
