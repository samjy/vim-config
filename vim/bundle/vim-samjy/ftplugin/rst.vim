" Vim filetype plugin file
" Language:         reStructuredText documentation format
" Maintainer:       Nikolai Weibull <now@bitwi.se>
" Latest Revision:  2008-07-09

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

let b:undo_ftplugin = "setl com< cms< et< fo<"

setlocal comments=fb:.. commentstring=..\ %s expandtab
setlocal formatoptions+=tcroql

setlocal textwidth=80

setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab

let &cpo = s:cpo_save
unlet s:cpo_save

iabbrev ,-- —
