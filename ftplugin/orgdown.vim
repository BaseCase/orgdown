if exists("b:orgdown_loaded")
  finish
endif
let b:orgdown_loaded = 1

command OrgDownHi call orgdown#SayHello()
command OrgJumpToNextHeading call orgdown#JumpToNextHeading()
command OrgJumpToPreviousHeading call orgdown#JumpToPreviousHeading()
