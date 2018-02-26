" Vim plugin
" Language:     Tor plug-in for Vim.
" Author:       Alexander Færøy <ahf@torproject.org>
" Copyright:    Copyright (c) 2018 Alexander Færøy
" License:      BSD-2-Clause

if &compatible || v:version < 603
    finish
endif

" Allow users to set the copyright holder for newly generated files. Make TPI
" the default value.
if ! exists('g:onion_copyright_holder')
    let g:onion_copyright_holder = "The Tor Project, Inc"
endif

" Allow users to specify which file to use for Tor autodetection. Default
" value is "src/or/or.h".
if ! exists('g:onion_search_file')
    let g:onion_search_file = "src/or/or.h"
endif

" Allow users to disable Doxygen syntax highlighting.
if ! exists('g:onion_disable_doxygen')
    let g:onion_disable_doxygen = 0
endif

" Allow users to disable spell checking in changes files.
if ! exists('g:onion_disable_spell_check')
    let g:onion_disable_spell_check = 0
endif

" Check if a given file belongs to tor.git by trying to find "or.h" in the
" nearby directories.
function! s:CheckIsTorFile()
    let l:file_dir = expand('%:p:h')

    " This function checks if a given file is part of the Tor filebase by
    " trying to find the "or.h" file.
    let l:target = g:onion_search_file
    let l:max_depth = 5

    while ! filereadable(l:file_dir . "/" . l:target)
        if l:max_depth == 0
            return
        endif

        let l:target = "../" . l:target
        let l:max_depth = l:max_depth - 1
    endwhile

    let b:onion_file = 1
endfunction

function! s:NewCSourceFile()
    let l:year = strftime("%Y")

    " Our filename: foo.h
    let l:filename = expand('%:t')

    " Our filename without the extension: foo
    let l:name = expand('%:t:r')

    " Our symbolic name: foo (with . and / changed to _).
    let l:symbolic_name = substitute(l:name, "[./]", "_", "g")

    put! ='/* Copyright (c) ' . l:year . ', ' . g:onion_copyright_holder . '. */'
    put  ='/* See LICENSE for licensing information */'
    put  =''
    put  ='/**'
    put  =' * \file ' . l:filename
    put  =' * \brief XXX: Write a brief introduction to this module.'
    put  =' **/'
    put  =''
    put  ='#define ' . toupper(l:symbolic_name) . '_PRIVATE'
    put  =''
    put  ='#include \"' . l:name . '.h\"'

    0
endfunction

function! s:NewCHeaderFile()
    let l:year = strftime("%Y")

    " Our filename: foo.h
    let l:filename = expand('%:t')

    " Our filename without the extension: foo
    let l:name = expand('%:t:r')

    " Our symbolic name: foo (with . and / changed to _).
    let l:symbolic_name = substitute(l:name, "[./]", "_", "g")

    put! ='/* Copyright (c) ' . l:year . ', ' . g:onion_copyright_holder . '. */'
    put  ='/* See LICENSE for licensing information */'
    put  =''
    put  ='/**'
    put  =' * \file ' . l:filename
    put  =' * \brief Header file for ' . l:name .'.c.'
    put  =' **/'
    put  =''
    put  ='#ifndef TOR_' . toupper(l:symbolic_name) . '_H'
    put  ='#define TOR_' . toupper(l:symbolic_name) . '_H'
    put  =''
    put  ='#ifdef ' . toupper(l:symbolic_name) . '_PRIVATE'
    put  =''
    put  ='#endif /* ' . toupper(l:symbolic_name) . '_PRIVATE */'
    put  =''
    put  ='#endif /* TOR_' . toupper(l:symbolic_name) . '_H */'

    0
endfunction

function! s:NewRustFile()
    let l:year = strftime("%Y")

    put! ='// Copyright (c) ' . l:year . ', ' . g:onion_copyright_holder . '.'
    put  ='// See LICENSE for licensing information.'
    put  =''
    put  ='//! XXX'

    0
endfunction

function! <SID>NewChangesFile()
    let l:filename  = expand('%:t')
    let l:directory = expand('%:p:h:t')
    let l:ticket_id = 0

    " Only generate a stub changes file if we are actually in the changes
    " directory.
    if l:directory != "changes"
        let b:onion_change_file = 0
        return
    endif

    let b:onion_change_file = 1
    let l:ticket_matches = matchstr(l:filename, '[0-9]\+', '\1')

    if ! empty(l:ticket_matches)
        let l:ticket_id = l:ticket_matches
    endif

    put! ='  o XXX (XXX):'

    if l:ticket_id == 0
        put  ='    - XXX.'
    else
        put  ='    - XXX. Fixes bug ' . l:ticket_id . '; bugfix on XXX.'
    endif

    0

    " FIXME(ahf): Move these elsewhere?
    if exists('g:onion_disable_spell_check') && ! g:onion_disable_spell_check
        setlocal spell
        setlocal spelllang=en
    endif

    setlocal textwidth=80
    setlocal nohlsearch
endfunction

" Sets b:onion_file - should be run before anything else.
call s:CheckIsTorFile()

augroup NewOnionCFile
    au!
    autocmd BufNewFile *.c
        \ if exists('b:onion_file') |
        \     call <SID>NewCSourceFile() |
        \ endif
    autocmd BufNewFile *.h
        \ if exists('b:onion_file') |
        \     call <SID>NewCHeaderFile() |
        \ endif
    autocmd BufNewFile *.rs
        \ if exists('b:onion_file') |
        \     call <SID>NewRustFile() |
        \ endif
    autocmd BufNewFile *
        \ if exists('b:onion_file') |
        \     call <SID>NewChangesFile() |
        \ endif
augroup END
