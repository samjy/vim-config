" Vim filetype plugin file
" Language:	python
" Maintainer:	Johannes Zellner <johannes@zellner.org>
" Last Change:	Wed, 21 Apr 2004 13:13:08 CEST

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin") | finish | endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal expandtab

"EOF
