""""""""""
" User Interface
""""""""""
" Show line numbers
set number " Short: se nu

" Set 7 lines to the cursor - when moving vertically using j/k
set scrolloff=7 " Short: se so=7

""""""""""
" Colors and Fonts
""""""""""
" Enable syntax highlighting
syntax enable

""""""""""
" Text, Tab, and Indent
""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Auto indent
set autoindent " Short: se ai
" Smart indent
set smartindent " Short: se si

""""""""""
" Status Line
""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=%{HasPaste()}%F%m%r%h%w\ \ %<PWD:%{PWDRelativeToHome()}\ \ %=%l/%L\ Col:%c

""""""""""
" Helper Functions
""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Function to get cwd relative to home directory
function! PWDRelativeToHome()
  let l:cwd = getcwd()
  let l:home = expand('~')
  return substitute(l:cwd, '^' . l:home, '~', '')
endfunction
