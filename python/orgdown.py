import vim


def jump_to_next_heading():
    current_row = vim.current.window.cursor[0]
    next_row_with_heading = _find_next_heading_row(current_row)
    if next_row_with_heading > -1:
        vim.current.window.cursor = (next_row_with_heading, 0)


def jump_to_previous_heading():
    current_row = vim.current.window.cursor[0]
    prev_row_with_heading = _find_previous_heading_row(current_row)
    if prev_row_with_heading > -1:
        vim.current.window.cursor = (prev_row_with_heading, 0)


def cycle_visibility_local():
    current_row = vim.current.window.cursor[0]
    if not _is_heading_row(current_row): return

    # it's a closed fold; open it
    if _is_closed_fold(current_row):
        vim.command("foldopen")

    # it's open; fold down to next heading
    else:
        next_header_row = _next_heading_row_of_equal_or_lesser_depth(current_row)
        if next_header_row > -1:
            vim.command("{0},{1}fold".format(current_row, next_header_row - 1))
        else:
            end = len(vim.current.buffer)
            vim.command("{0},{1}fold".format(current_row, end))


def _is_closed_fold(row_num):
    print("checking row {}".format(row_num))
    res = int(vim.eval("foldclosed({})".format(row_num)))
    return res > -1


def _next_heading_row_of_equal_or_lesser_depth(row_num):
    depth = _header_depth_of_row(row_num)
    rows_below = vim.current.buffer[row_num:]
    for index, row in enumerate(rows_below):
        if row.startswith('#'):
            this_row_num = index + row_num + 1
            this_depth = _header_depth_of_row(this_row_num)
            if this_depth <= depth:
                return this_row_num
    return -1


def _is_heading_row(row_num):
    row = vim.current.buffer[row_num-1]
    return row.startswith('#')


def _header_depth_of_row(row_num):
    row = vim.current.buffer[row_num-1]
    return row.find(' ')


def _find_next_heading_row(start_from):
    rows_below = vim.current.buffer[start_from:]
    for index, row in enumerate(rows_below):
        if row.startswith('#'):
            return index + start_from + 1
    return -1


def _find_previous_heading_row(start_from):
    rows_above = reversed(vim.current.buffer[0 : start_from - 1])
    for index, row in enumerate(rows_above):
        if row.startswith('#'):
            return start_from - index - 1
    return -1
