set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
set tabstop=4 " タブ幅をスペース4つ分にする
set expandtab " tabを半角スペースで挿入する
set shiftwidth=4 " vimが自動で生成する（読み込み時など）tab幅をスペース4つ文にする
set softtabstop=4
set tabstop=4
set smartindent
set smarttab
set shiftround
set list " 空白文字の可視化
set nrformats-=octal " 0で始まる数値を、8進数として扱わないようにする
set hidden
set history=5
set virtualedit=block " 文字のないところにカーソル移動できるようにする
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start " バックスペースを、空白、行末、行頭でも使えるようにする
set wildmenu " カーソルの回り込みができるようになる
set noswapfile
set clipboard+=unnamed

" #####FILE & SPLIT#####
" Shift＋j、もしくはShift+lで現在のバッファをスプリットして開く
" バーを行結合に再度割り当て
nnoremap <silent> <S-j> :split<CR>
nnoremap <silent> <S-l> :vsplit<CR>
nnoremap <Bar> $:let pos = getpos(".")<CR>:join<CR>:call setpos('.', pos)<CR>

" #####WINDOW MOVE#####
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" #####行移動#####
" 折り返し行移動
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
" 20行ずつ移動
nnoremap <C-n> 20j
vnoremap <C-n> 20j
nnoremap <C-p> 20k
vnoremap <C-p> 20k

" #####その他#####
set clipboard=unnamed
set number " 行番号の表示
set title " terminalのtitleをset
set ambiwidth=double " 文脈によって解釈が異なる全角文字の幅を、2に固定
set ruler
set nowrap
set title
set showmatch
set nocompatible "<tab>補完
set wildmenu "補完候補がステータスメニュー上に一覧表示される
set showcmd
set mouse=a
colorscheme desert
syntax enable
set virtualedit=onemore
set shiftwidth=4
set list

" #####検索設定#####
set incsearch
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set ignorecase " 検索時、大文字小文字を区別しない
set smartcase " 検索時、ただし大文字を含んでいた場合は大文字小文字を区別する
set hlsearch " ハイライトサーチを有効にする。

" #####ノーマルモード移行と保存#####
inoremap <silent> jj <ESC>:<C-u>w<CR>

" #####LEADER#####
let mapleader = "\<Space>" " leaderをspaceキーにする

" vs シェルを起動
nnoremap <silent> 'v :VimShell<CR>
" vs ウインドウを分割してシェルを起動
nnoremap <silent> 's :VimShellPop<CR>

" #####SYNTAX#####
if has("syntax")
      syntax on
    endif

" neobundle settings {{{
if has('vim_starting')
  set nocompatible
  " neobundle をインストールしていない場合は自動インストール
  if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
    echo "install neobundle..."
    " vim からコマンド呼び出しているだけ neobundle.vim のクローン
    :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
  endif
  " runtimepath の追加は必須
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
let g:neobundle_default_git_protocol='https'

" neobundle#begin - neobundle#end の間に導入するプラグインを記載します。
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
  \     'windows' : 'make -f make_mingw32.mak',
  \     'cygwin' : 'make -f make_cygwin.mak',
  \     'mac' : 'make -f make_mac.mak',
  \     'unix' : 'make -f make_unix.mak',
  \    },
  \ }
" vimrc に記述されたプラグインでインストールされていないものがないかチェックする
NeoBundleCheck
call neobundle#end()
filetype plugin indent on
