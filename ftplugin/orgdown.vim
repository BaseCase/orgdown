if exists("b:orgdown_loaded")
  finish
endif
let b:orgdown_loaded = 1

" navigation
command! OrgdownJumpToNextHeading call orgdown#JumpToNextHeading()
command! OrgdownJumpToPreviousHeading call orgdown#JumpToPreviousHeading()

" visibility cycling
command! OrgdownCycleVisibilityLocal call orgdown#CycleVisibilityLocal()
