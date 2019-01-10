" Vim indent file
" Language:     Trunnel indentation for Vim.
" Author:       Alexander Færøy <ahf@torproject.org>
" Copyright:    Copyright (c) 2019 Alexander Færøy
" License:      BSD-2-Clause
"
if &compatible || v:version < 603
    finish
endif

if exists("b:did_indent")
  finish
endif

let b:did_indent = 1

setlocal cindent

" Expand tabs.
setlocal expandtab

" Use two spaces per tab.
setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
