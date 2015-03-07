import vim

def say_hello():
    print('oh hey a python file!!')

def jump_to_next_heading():
    current_row = vim.current.window.cursor[0]
    next_row_with_heading = _find_next_heading_row(current_row)
    if next_row_with_heading > -1:
        vim.current.window.cursor = (next_row_with_heading, 0)


def _find_next_heading_row(start_from):
    rows_below = vim.current.buffer[start_from:]
    for index, row in enumerate(rows_below):
        if row.startswith('#'):
            return index + start_from + 1
    return -1
