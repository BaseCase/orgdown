if exists("b:orgdown_autoloaded")
  finish
endif
let b:orgdown_autoloaded = 1

if !has('python')
  echo "pls compile vim with python support to use orgdown thx"
  finish
endif

" construct path to python file we want to load, then run it
let s:py_location = resolve(expand('<sfile>:p:h:h')) . '/python/orgdown.py'
execute 'pyfile ' . s:py_location

function! orgdown#SayHello()
  python say_hello()
endfunction

function! orgdown#JumpToNextHeading()
  python jump_to_next_heading()
endfunction

function! orgdown#JumpToPreviousHeading()
  python jump_to_previous_heading()
endfunction
