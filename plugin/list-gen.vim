if exists('g:loaded_list_gen') | finish | endif
let g:loaded_list_gen = v:true

" COMMANDS {{{

command! -nargs=+ ListGenNumbers call list_gen#numbers(<f-args>)
command! -nargs=+ ListGenChars call list_gen#chars(<f-args>)

"  }}}
