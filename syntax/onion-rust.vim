" Vim plugin
" Language:     Tor plug-in for Vim.
" Author:       Alexander Færøy <ahf@torproject.org>
" Copyright:    Copyright (c) 2018 Alexander Færøy
" License:      BSD-2-Clause

if &compatible || v:version < 603
    finish
endif

if exists("b:current_syntax")
    finish
endif

runtime! syntax/rust.vim

let b:current_syntax = "onion-rust"
