set mouse=a
set encoding=UTF-8
set number
syntax on

" set tab to 4 spaces
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Tab / Shift Tab to navigate between tabs
nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprevious<CR>

" Open Terminal  (linux/pwershell) not support bash 
if has('win32')
    nnoremap <C-N> :botright split term://powershell<CR>
else
    nnoremap <C-N> :botright split term://zsh<CR>
endif

tnoremap <Esc> <C-\><C-n>


" VimPlug plugin manager
call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
" Plug 'https://github.com/neoclide/coc.nvim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'OmniSharp/omnisharp-vim'

Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'romgrk/barbar.nvim'
"Autopair 
Plug 'windwp/nvim-autopairs'
"Auto Comment 
Plug 'KarimElghamry/vim-auto-comment'

call plug#end()

" set the colorsheme
" list: https://github.com/rafi/awesome-vim-colorschemes
colorscheme minimalist

"Auto Comment Setting 
let g:default_inline_comment = '#'

let g:inline_comment_dict = {
		\'//': ["js", "ts", "cpp", "c", "dart", "cs"],
		\'#': ['py', 'sh'],
		\'"': ['vim'],
		\}

let g:default_block_comment = '/*'

let g:block_comment_dict = {
		\'/*': ["js", "ts", "cpp", "c", "dart"],
		\'"""': ['py'],
		\}


" Inline comment mapping
vnoremap <silent><C-_> :AutoInlineComment<CR>
nnoremap <silent><C-_> :AutoInlineComment<CR>

" Block comment mapping
vnoremap <silent><C-S-a> :AutoBlockComment<CR>
nnoremap <silent><C-S-a> :AutoBlockComment<CR>

"Setting Bar Bar Plugin
" Move to previous/next
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>

" Re-order to previous/next
nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>

" Pin/unpin buffer
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>

" Close buffer
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
" Restore buffer
nnoremap <silent>    <A-s-c> <Cmd>BufferRestore<CR>

" Wipeout buffer
"                          :BufferWipeout
" Close commands
"                          :BufferCloseAllButCurrent
"                          :BufferCloseAllButVisible
"                          :BufferCloseAllButPinned
"                          :BufferCloseAllButCurrentOrPinned
"                          :BufferCloseBuffersLeft
"                          :BufferCloseBuffersRight

" Magic buffer-picking mode
nnoremap <silent> <C-p>    <Cmd>BufferPick<CR>
nnoremap <silent> <C-p>    <Cmd>BufferPickDelete<CR>

" Sort automatically by...
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used
"
" Autopair Setting


