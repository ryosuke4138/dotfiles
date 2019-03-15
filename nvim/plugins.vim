
" ╭─────────────╥──────────────────╮
" │ Author:     ║ File:            │
" │ Andrey Orst ║ plufins.vim      │
" ╞═════════════╩══════════════════╡
" │ Rest of .dotfiles:             │
" │ GitHub.com/andreyorst/dotfiles │
" ╰────────────────────────────────╯

filetype off

call plug#begin('~/.vim/bundle')

" Look
	Plug 'chriskempson/base16-vim'
	if !IsTermux()
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
	endif

" Tools
	" Plug 'Valloric/YouCompleteMe'
	Plug 'andreyorst/SimpleClangFormat.vim'
	Plug 'andreyorst/SimpleSnippets-snippets'
	Plug 'andreyorst/SimpleSnippets.vim'
	Plug 'andreyorst/SimpleWorkspaces.vim'
	Plug 'justinmk/vim-sneak'
	Plug 'raimondi/delimitMate'
	Plug 'shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
	Plug 'deoplete-plugins/deoplete-jedi' "completion
	Plug 'Shougo/neosnippet-snippets'
	Plug 'scrooloose/nerdtree' "A tree explorer plugin
	Plug 'scrooloose/syntastic' "Syntax checking hacks
	Plug 'tomtom/tcomment_vim'
	Plug 'tpope/vim-surround'
	Plug 'wellle/targets.vim'

	if IsTermux()
		Plug 'w0rp/ale'
		Plug 'zchee/deoplete-clang'
	else
		Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
		Plug 'majutsushi/tagbar'
		Plug 'scrooloose/nerdtree'
		Plug 'shougo/denite.nvim', {'do': ':UpdateRemotePlugins'}

	" Rust
		Plug 'rust-lang/rust.vim'
	endif

" Syntax Highlighting
	Plug 'justinmk/vim-syntax-extra'
	Plug 'bfrg/vim-cpp-modern'

call plug#end()

