" Vim plugin
" Language:     Tor plug-in for Vim.
" Author:       Alexander Færøy <ahf@torproject.org>
" Copyright:    Copyright (c) 2018-2019 Alexander Færøy
" License:      BSD-2-Clause

if &compatible || v:version < 603
    finish
endif

" Make sure our Onion file check have run.
call onion#IsOnionFile()

if ! exists('b:onion_file') || exists('b:onion_rust_did_indent')
    finish
endif

let b:onion_rust_did_indent = 1
