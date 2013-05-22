highlight TrailingSpaces ctermbg=darkgray guibg=darkgray
call matchadd('TrailingSpaces', '\s\+$', -1)
highlight Nbsp ctermbg=cyan guibg=cyan
call matchadd('Nbsp', ' ', -1)

" Templates
au bufNewFile *.rst $r ~/.vim/bundle/vim-samjy/templates/rst.rst


