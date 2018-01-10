" Vim plugin
" Language:     Tor plug-in for Vim.
" Author:       Alexander Færøy <ahf@torproject.org>
" Copyright:    Copyright (c) 2018 Alexander Færøy
" License:      BSD-2-Clause

if &compatible || v:version < 603
    finish
endif

function! s:TorCFile()
    if b:onion_file
        set filetype=onion-c
    else
        set filetype=c
    endif
endfunction

au BufNewFile,BufRead *.c call <SID>TorCFile()
au BufNewFile,BufRead *.h call <SID>TorCFile()
