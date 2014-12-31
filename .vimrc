" Turn on aut-indent
" filetype plugin indent on

" Turn on syntax highlighting
syntax on

" Turn on ruler (line/column number in bottom right) by default
set ruler

" Set tab spacing
set ts=4
set shiftwidth=4
set expandtab
set tabstop=4

" Allow for CTRL left/right word skipping
map <ESC>b <C-Left>
map <ESC>f <C-Right>
map! <ESC>b <C-left>
map! <ESC>f <C-Right>

" Allows for reasonable copy/pasting
if &term =~ "xterm.*"
    let &t_ti = &t_ti . "\e[?2004h"
    let &t_te = "\e[?2004l" . &t_te
    function XTermPasteBegin(ret)
        set pastetoggle=<Esc>[201~
        set paste
        return a:ret
    endfunction
    map <expr> <Esc>[200~ XTermPasteBegin("i")
    imap <expr> <Esc>[200~ XTermPasteBegin("")
    cmap <Esc>[200~ <nop>
    cmap <Esc>[201~ <nop>
endif

