" Vim file detection
" Language:     Tor file detection for Vim.
" Author:       Alexander Færøy <ahf@torproject.org>
" Copyright:    Copyright (c) 2019 Alexander Færøy
" License:      BSD-2-Clause

if &compatible || v:version < 603
    finish
endif

au BufNewFile,BufRead *.trunnel set filetype=trunnel
