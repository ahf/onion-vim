" Vim plugin
" Language:     Tor plug-in for Vim.
" Author:       Alexander Færøy <ahf@torproject.org>
" Copyright:    Copyright (c) 2018 Alexander Færøy
" License:      BSD-2-Clause

if &compatible || v:version < 603
    finish
endif

runtime! ftplugin/c.vim

" We use spaces instead of tabs.
setlocal expandtab

" We use 2 spaces per tab.
setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2

" Use UTF-8 for files.
set fileencoding=utf-8

" Set fileformat
set fileformat=unix

" Max 80 character wide lines.
setlocal textwidth=80

" Set different C indentation options. These are all a bit hairy, but have a
" look at :help cinoptions-values for information about these.
" - Keep `case X:` at same indentation level as the `switch (...) {`.
setlocal cinoptions+=:0
" - Add an indentation of 1 for labels.
setlocal cinoptions+=L1
" - Nicer identation when we are in an unclosed parantheses.
setlocal cinoptions+=(0
" - Don't indent a function return type.
setlocal cinoptions+=t0
