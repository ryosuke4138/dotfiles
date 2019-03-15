
" ╭─────────────╥──────────────────╮
" │ Author:     ║ File:            │
" │ R.Okamae    ║ init.vim         │
" ╞═════════════╩══════════════════╡
" │ Rest of .dotfiles:             │
" │ GitHub.com/ryosuke4138/dotfiles│
" ╰────────────────────────────────╯

" Common Settings
	set fileformats=unix,dos,mac
	set fileencodings=utf-8,sjis
	filetype plugin indent on
	set encoding=utf-8
	set mouse=a
	set number
	set relativenumber
	set cursorline
	syntax on
	set path+=**
	set wildmenu
	set termguicolors
	if !IsTermux()
		colorscheme base16-gruvbox-dark-soft
	else
		colorscheme base16-default-dark
	endif
	set updatetime=350
	set signcolumn=yes
	set wrap
	set linebreak
	set scrolloff=5
	set shortmess+=c
	set lazyredraw
	set hidden
	set inccommand=nosplit

" Folds
	set foldmethod=indent
	set foldlevelstart=20 " Disables automatic closing of all folds on fileopen
	hi Folded ctermfg=black
	hi Folded ctermbg=white

" Tabs, trailing spaces
	set listchars=tab:▏\ ,eol:\ ,extends:,precedes:,space:\ ,trail:⋅
	set list

" Splits
	set noequalalways
	set splitright
	set splitbelow

" #####FILE & SPLIT#####
	nnoremap <silent> <S-j> :split<CR>
	nnoremap <silent> <S-l> :vsplit<CR>
	nnoremap <Bar> $:let pos = getpos(".")<CR>:join<CR>:call setpos('.', pos)<CR>

" #####WINDOW MOVE#####
	noremap <C-u> <C-w>h
	noremap <C-j> <C-w>j
	noremap <C-k> <C-w>k
	noremap <C-l> <C-w>l
	" if has('nvim')
	"  nmap <BS> <C-W>h
	" endif

" keyboard
	noremap j gj
	noremap k gk
	noremap j gj
	noremap k gk
	noremap <C-n> 20j
	noremap <C-n> 20j
	noremap <C-m> 20k
	noremap <C-m> 20k

" Tabs
	set noexpandtab
	set tabstop=4
	set shiftwidth=4
	set smartindent

" Keymap fixes
	set iminsert=0
	set imsearch=0

" Spell
	set spelllang=ru_yo,en_us

" Justify text
	runtime macros/justify.vim

" Highlights
	" Common highlights
		highlight EndOfBuffer guifg=bg guibg=NONE
		highlight ErrorSign guibg=#3c3836 guifg=#fb4934
		highlight WarningSign guibg=#3c3836 guifg=#fabd2f
		highlight InfoSign guibg=#3c3836 guifg=#8ec07c
		highlight Search guifg=#282a2e
		highlight IncSearch guifg=#282a2e
		highlight Child guifg=#fb4934 guibg=NONE cterm=bold gui=bold

	" vim-sneak
		highlight Sneak guifg=black guibg=orange

" Autocmds
	augroup Trailing
		autocmd!
		autocmd BufWritePre *.* :call RemoveTrailingSpaces()
	augroup end

	" Enter insert mode when terminal shows up
	augroup Term
		autocmd!
		autocmd TermOpen * setlocal nonu nornu signcolumn=no
		autocmd TermOpen * startinsert
	augroup end

	set clipboard=unnamed
	set number
	set title
	set ruler
	set nowrap
	set title
	set showmatch
	set nocompatible
	set showcmd
	set mouse=a
	" colorscheme desert
	syntax enable
	set virtualedit=onemore
	set shiftwidth=4
	set list

	set incsearch
	set smartcase
	set wrapscan
	set ignorecase
	set hlsearch
	set smartcase

	" SYNTAX
	if has("syntax")
    	syntax on
	endif

" replace ESC with jj
	inoremap <silent> jj <ESC>:<C-u>w<CR>
