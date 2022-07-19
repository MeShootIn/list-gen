function! s:print(str)
  exec 'normal! a' .. a:str
endfunction

function! list_gen#numbers(arg_1, arg_2 = v:null, delimiter = ', ') abort
  let start = 1
  let end = a:arg_1

  if a:arg_2 != v:null
    let start = a:arg_1
    let end = a:arg_2
  endif

  for i in range(start, end)
    call s:print(
          \ i .. ((i < end) ? a:delimiter : '')
          \ )
  endfor
endfunction

function! list_gen#chars(n, start = 'a', delimiter = ', ') abort
  for i in range(a:n)
    call s:print(
          \ "'" .. nr2char(char2nr(a:start) + i) .. "'"
          \ .. ((i < a:n - 1) ? a:delimiter : '')
          \ )
  endfor
endfunction
