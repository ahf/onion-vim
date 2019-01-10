" Vim syntax file
" Language:     Trunnel syntax for Vim.
" Author:       Alexander Færøy <ahf@torproject.org>
" Copyright:    Copyright (c) 2019 Alexander Færøy
" License:      BSD-2-Clause

if &compatible || v:version < 603
    finish
endif

if exists("b:current_syntax")
  finish
endif

" Trunnel is mostly C :-)
runtime! syntax/c.vim
unlet b:current_syntax

" Trunnel extensions to C.
syn keyword TrunnelStatements IN with
syn keyword TrunnelType u8 u16 u32 u64 nulterm eos

hi def link TrunnelStatements Statement
hi def link TrunnelType Type

let b:current_syntax = "trunnel"
