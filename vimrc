syntax on               "Turn on syntax highlighting
set encoding=utf-8      "Sets the character encoding used inside vim
set tabstop=4           "To control number of space characters inserted when tab is pressed.
set shiftwidth=4        "To control number of space characters inserted when indenting.
set expandtab           "To insert space characters whenever tab is pressed
set autoindent          "To copy the same indent from the current line onto the next line
set smartindent         "Smart indenting when starting a new line e.g after {
set splitright          "To open new screen on the right using :vsplit or :vnew
set splitbelow          "To open new screen below current using :split or :new
set number              "Display line numbers
set ruler               "Show line and column number of the cursor position
set colorcolumn=120      "Display colum of maximum recommended line length
filetype plugin indent on "Enable file-type related settings.

nnoremap <F4> :put =strftime('# %d/%m/%Y ')<CR>A
inoremap <F4> <ESC>:put =strftime('# %d/%m/%Y ')<CR>A

command! -nargs=1 -complete=file -bar Compile :w !python3 filter.py <args> | pandoc -o %:r.pdf && open %:r.pdf
nnoremap <leader>lc :Compile<space>
nnoremap <leader>lo :w !pandoc -o %:r.pdf<CR>:!open %:r.pdf<CR><CR>

"Common typos
command! Wq wq
command! WQ wq
command! Q q
command! W w

"Create tags file for tag jumping using ^x]
"Make sure ctags is installed.
command! Maketags !ctags -R .
