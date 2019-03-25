" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

set number "Number line
let mapleader = ","
"set relativenumber
set noswapfile
set mouse=a
set showmode
set encoding=UTF-8
set nobackup
set incsearch
set nowritebackup
set splitright "Open new split in right side
set cursorline "Highlight current line
"set colorcolumn=80
set linespace=5
set clipboard+=unnamedplus
set termguicolors

"Toggle NERDTree hotkey
"nnoremap <C-n> :NERDTreeToggle<CR>
"nnoremap <silent> <C-v> :NERDTreeFind<CR>
"let NERDTreeQuitOnOpen = 1
"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1

"Indent
set tabstop=2
set shiftwidth=2
set expandtab "Insert spaces instead tab-symbol

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv<Paste>

" Colors
highlight LineNr term=bold cterm=NONE ctermfg=red ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


filetype off
syntax enable

"Plugins
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'terryma/vim-multiple-cursors'
  Plug 'pangloss/vim-javascript'
  Plug 'posva/vim-vue'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'tpope/vim-vinegar'
  Plug 'ap/vim-css-color'
  Plug 'vim-python/python-syntax'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'alvan/vim-closetag'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'mattn/emmet-vim'
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'digitaltoad/vim-pug'
  Plug 'tpope/vim-fugitive'
  Plug 'Shougo/neosnippet'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'Shougo/unite.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'joshdick/onedark.vim'
  Plug 'dikiaap/minimalist'
  Plug 'tomasiser/vim-code-dark'
  Plug 'liuchengxu/space-vim-dark'
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-scripts/MatchTag'
  Plug 'crusoexia/vim-monokai'
  Plug 'scrooloose/nerdcommenter'
  Plug 'ervandew/supertab'
  Plug 'Yggdroot/indentLine'
  Plug 'matze/vim-move'
  Plug 'unblevable/quick-scope'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-surround'
  Plug 'elzr/vim-json'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1
  


  let g:neosnippet#enable_completed_snippet = 1

call plug#end()

"map <C-n> :NERDTreeToggle<CR>
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_working_path_mode = 'rw'
"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"colorscheme space-vim-dark
hi LineNr ctermbg=NONE guibg=NONE
"hi Comment cterm=italic
colorscheme codedark 
let g:airline_theme = 'codedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0

set background=dark
imap jj <esc>

" Jump outside '"({
if !exists('g:AutoPairsShortcutJump')
  let g:AutoPairsShortcutJump = '<C-l>'
endif
let g:python_highlight_all = 1
map <C-p> :Files<Cr>
nnoremap <leader>p :GFiles<Cr>
nnoremap <leader>a :Buffers<Cr>
nnoremap <leader>q :bd<Cr>
nnoremap <leader>w :w<Cr>
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.js,*.jsx"
let g:SuperTabDefaultCompletionType = "<c-n>"


" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

"set conceallevel=0

" Trigger a highlight only when pressing f and F.
let g:qs_highlight_on_keys = ['f', 'F']
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline



tnoremap <Esc> <C-\><C-n>
map <Leader>n :NERDTreeToggle<CR>

autocmd Filetype json :IndentLinesDisable
