if exists("g:orgdown_autoloaded")
  "finish
endif
let g:orgdown_autoloaded = 1

if !has('python')
  echo "pls compile vim with python support to use orgdown thx"
  finish
endif

pyfile python/orgdown.py

function! orgdown#SayHello()
  python say_hello()
endfunction

function! orgdown#JumpToNextHeading()
  python jump_to_next_heading()
endfunction

function! orgdown#JumpToPreviousHeading()
  python jump_to_previous_heading()
endfunction
