if exists("g:orgdown_loaded")
  finish
endif
let g:orgdown_loaded = 1

command OrgDownHi call orgdown#SayHello()
command OrgJumpToNextHeading call orgdown#JumpToNextHeading()
command OrgJumpToPreviousHeading call orgdown#JumpToPreviousHeading()
