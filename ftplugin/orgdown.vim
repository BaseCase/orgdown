if exists("b:orgdown_loaded")
  finish
endif
let b:orgdown_loaded = 1

command! OrgDownHi call orgdown#SayHello()
command! OrgJumpToNextHeading call orgdown#JumpToNextHeading()
command! OrgJumpToPreviousHeading call orgdown#JumpToPreviousHeading()

" TODO: obviously these need to be fixed so that they play nice with the rest
"       of the world and only activate inside .md files.
map <C-j> :OrgJumpToNextHeading<cr>
map <C-k> :OrgJumpToPreviousHeading<cr>
