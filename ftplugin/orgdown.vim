if exists("b:orgdown_loaded")
  finish
endif
let b:orgdown_loaded = 1

" navigation
command! OrgJumpToNextHeading call orgdown#JumpToNextHeading()
command! OrgJumpToPreviousHeading call orgdown#JumpToPreviousHeading()

" visibility cycling
command! OrgCycleVisibilityLocal call orgdown#CycleVisibilityLocal()



" TODO: obviously these need to be fixed so that they play nice with the rest
"       of the world and only activate inside .md files.
map <C-j> :OrgJumpToNextHeading<cr>
map <C-k> :OrgJumpToPreviousHeading<cr>
map <Tab> :OrgCycleVisibilityLocal<cr>
