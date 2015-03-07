if exists("g:orgdown_autoloaded")
  "finish
endif
let g:orgdown_autoloaded = 1

if !has('python')
  echo "pls compile vim with python support to use orgdown thx"
  finish
endif

pyfile python/orgdown.py

function! orgdown#OrgDownSayHello()
  python say_hello()
endfunction
