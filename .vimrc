" Pathogen Installation
call pathogen#infect()

" Stylish changes
filetype plugin indent on
syntax on
" colorscheme gotham256
" colorscheme Atelier_DuneLight
" colorscheme Atelier_CaveDark
" colorscheme elflord
" colorscheme Chasing_Logic
" colorscheme purify
" colorscheme OceanicNext
colorscheme molokai

set number
set guifont=LiberationMono\ 12

set showtabline=2

" airline
" let g:airline_theme='gruvbox'
let g:airline_theme='cool'
" let g:airline_statusline_ontop=1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1           " enable airline tabline
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline
let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline
let g:airline#extensions#tabline#buffer_nr_show = 1

" quit
map <silent> <C-q> :q<CR>

" Gitline hightlight
map <silent> <C-g> :GitGutterLineHighlightsToggle<CR>

" Vspit shortcut
map <silent> <C-d> :vsplit<CR>
map <silent> <C-f> :sp<CR>

" Explorer shortcut
map <silent> <C-s> :Ex<CR>

" NERDTree shortcuts
map <silent> <C-n> :NERDTreeTabsToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-t> :tabnew<CR>
" make-nerdtree-always-open-on-the-right-side
let g:NERDTreeWinPos = "right"
" Show hidden files
let NERDTreeShowHidden = 1
" Make it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" Make NerdTree open automatically when a dir is selected instead of a file
let g:NERDTreeHijackNetrw = 1
au VimEnter NERD_tree_1 enew | execute 'NERDTree'.argv()[0]
" Make NerdTree open when a new tab is opened
" autocmd BufWinEnter * NERDTreeMirror
" autocmd VimEnter * NERDTree
" This will insert four spaces instead of a tab character. Spaces are a bit more “stable”, meaning that text indented with spaces will show up the same in the browser and any other application.
set tabstop=2
set shiftwidth=2
set expandtab

" Other fixes
set backspace=indent,eol,start
let g:go_version_warning = 0

" Ignore existing swap file
set shortmess+=A

" Folding/Collapsing
" In a more convenient way, folds can be created automatically based on the language syntax of the current buffer. If you are using a programming language, let's call it L, and you have folding definition of L (e.g. you have installed a Vim plugin in which the folding information of L is defined; such as c.vim for C/C++, or python-mode for Python), you just need to set folding method to syntax:
set foldmethod=manual
" set foldmethod=indent
" set foldmethod=syntax
" set foldnestmax=10
" set nofoldenable
" set foldlevel=2

" Enabled UTF-8
set encoding=utf-8

" Move lines up and Down
nnoremap <A-Up> :m-2<CR>
nnoremap <A-Down> :m+<CR>
inoremap <A-Up> <Esc>:m-2<CR>
inoremap <A-Down> <Esc>:m+<CR>

" Python syntax
" let g:syntastic_python_checkers = ['pylint']

" set keyword _ for delete work
set iskeyword=_
set iskeyword=-
set iskeyword=/

" Enable CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" Autoclose parenthesis
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O


" vim terraform
let g:terraform_align=1

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" JAVASCRIPT

au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ — parser\ typescript

let g:jsx_ext_required = 0

let g:ale_linters = {
\   'javascript': ['standard'],
\}

let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_linters_explicit = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--no-semi --single-quote --trailing-comma none'

" Autocompletion
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" END JAVASCRIPT
