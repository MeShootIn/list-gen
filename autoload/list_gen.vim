function! list_gen#numbers(arg_1, arg_2 = v:null, delimiter = ', ') abort
  let start = 1
  let end = a:arg_1

  if a:arg_2 != v:null
    let start = a:arg_1
    let end = a:arg_2
  endif

  for i in range(start, end)
    exec 'normal! a' .. i .. ((i < end) ? a:delimiter : '')
  endfor
endfunction

" TODO Gen chars.
