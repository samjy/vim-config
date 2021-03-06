" Install templates

" Templates
au bufNewFile *.py 0r  ~/.vim/bundle/vim-samjy/templates/python.py
au bufNewFile *.rst $r ~/.vim/bundle/vim-samjy/templates/rst.rst
au bufNewFile *.ly 0r  ~/.vim/bundle/vim-samjy/templates/lilypond.ly
autocmd BufNewFile * %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge

" color for match parenthesis
hi MatchParen cterm=none ctermbg=cyan ctermfg=white

command TranslationSearch normal /^msgstr\(\[.*\]\)\? ""\n\([^"#]\|$\)
