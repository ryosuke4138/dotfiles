
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
	Plug 'autozimu/LanguageClient-neovim', {
	    \ 'branch': 'next',
	    \ 'do': 'bash install.sh',
	    \ }
	Plug 'iamcco/markdown-preview.vim' "viewing Markdown
	" (Optional) Multi-entry selection UI.
	Plug 'junegunn/fzf'
	Plug 'shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
	Plug 'deoplete-plugins/deoplete-jedi' "completion
	Plug 'scrooloose/nerdtree' "A tree explorer plugin
	Plug 'scrooloose/syntastic' "Syntax checking hacks
	Plug 'tomtom/tcomment_vim'
	Plug 'tpope/vim-surround'
	Plug 'wellle/targets.vim'
	Plug 'artur-shaik/vim-javacomplete2'
		Plug 'zchee/deoplete-clang'

		if IsTermux()
			Plug 'w0rp/ale'
		else
			Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
			Plug 'majutsushi/tagbar'
			Plug 'shougo/denite.nvim', {'do': ':UpdateRemotePlugins'}

		" Rust
			Plug 'rust-lang/rust.vim'
		endif

	" Syntax Highlighting
		Plug 'justinmk/vim-syntax-extra'
		Plug 'bfrg/vim-cpp-modern'

	call plug#end()

let g:python3_host_prog = substitute(system('which python3'),"\n","","")
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/r.o./.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/r.o./.cache/dein')
  call dein#begin('/Users/r.o./.cache/dein')

  " LanguageClient:
  " call dein#add('autozimu/LanguageClient-neovim', { 'rev': 'next' })
  " call dein#local(s:srcpath, { 'frozen': 1, 'merged': 1 }, ['github.com/autozimu/LanguageClient-neovim'])
  " call dein#add('google/ijaas')

  " Filer:
  call dein#add('cocopon/vaffle.vim')
  call dein#add('scrooloose/nerdtree', { 'on_cmd': ['NERDTree', 'NERDTreeVCS', 'NERDTreeFromBookmark', 'NERDTreeToggle', 'NERDTreeFocus', 'NERDTreeMirror', 'NERDTreeClose', 'NERDTreeFind', 'NERDTreeCWD', 'NERDTreeRefreshRoot'] })
  " call dein#add('google/vim-searchindex')
  " call dein#add('Shougo/defx.nvim')
  " call dein#add('godlygeek/tabular')

  " Git:
  call dein#add('airblade/vim-gitgutter')
  call dein#add('lambdalisue/gina.vim')

  " Linter:
  call dein#add('w0rp/ale')

  " Formatter:
  call dein#add('rhysd/vim-clang-format', { 'on_ft': ['c', 'cpp', 'objc', 'objcpp', 'proto', 'javascript', 'java', 'typescript'] })

  " Insert:
  " call dein#add('tmsvg/pear-tree', { 'on_event': 'InsertEnter' })

  " References:
  call dein#add('simnalamburt/vim-mundo')
  " call dein#add('mbbill/undotree')

  " Interface:
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes', { 'depends': ['vim-airline/vim-airline'] })
  call dein#add('itchyny/lightline.vim')
  call dein#add('maximbaz/lightline-ale')
  call dein#add('mgee/lightline-bufferline')
  call dein#add('ryanoasis/vim-devicons')

  " Debugger:
  call dein#add('sakhnik/nvim-gdb')

  " Operator:
  call dein#add('kana/vim-operator-user')
  call dein#add('kana/vim-operator-replace', { 'on_map': '<Plug>', 'depends': 'vim-operator-user' })
  call dein#add('rhysd/vim-operator-surround', { 'on_map': '<Plug>', 'depends': 'vim-operator-user' })
  call dein#add('kana/vim-niceblock')

  " Utility:
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})
  call dein#add('cocopon/colorswatch.vim', { 'on_cmd': ['ColorSwatchGenerate'] })
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('haya14busa/dein-command.vim', { 'on_cmd': ['Dein'] })
  call dein#add('haya14busa/vim-asterisk', { 'on_map': ['<Plug>'] })
  call dein#add('itchyny/vim-parenmatch')
  call dein#add('junegunn/vim-easy-align', {'on_map': '<Plug>'})
  call dein#add('mattn/benchvimrc-vim', { 'on_cmd': ['BenchVimrc'] })
  call dein#add('mattn/sonictemplate-vim', { 'on_cmd': ['Template'] })
  call dein#add('rhysd/accelerated-jk', { 'on_map': ['<Plug>'] })
  call dein#add('thinca/vim-quickrun', { 'on_cmd': ['Capture'] })
  call dein#add('tyru/caw.vim', { 'on_map': ['<Plug>'] })
  call dein#add('tyru/open-browser.vim')
  call dein#add('tyru/open-browser-github.vim', { 'on_cmd': ['OpenGithubFile', 'OpenGithubIssue', 'OpenGithubPullReq'], 'depends': 'open-browser.vim' })
  call dein#add('tweekmonster/helpful.vim', { 'on_cmd': ['HelpfulVersion'] })
  call dein#add('tweekmonster/startuptime.vim', { 'on_cmd': ['StartupTime'] })
  " call dein#add('sheerun/vim-polyglot')
  " call dein#add('wellle/targets.vim')

  " Language Plugin:

  "" Go:
  " call dein#add('fatih/vim-go', { 'on_ft': ['go'], 'lazy': 1 })
  " call dein#local(s:srcpath, { 'frozen': 1, 'merged': 0, 'on_ft': ['go', 'asm', 'gomod'] }, ['github.com/fatih/vim-go'])
  " call dein#local(s:srcpath, { 'on_ft': ['go', 'asm', 'gomod'], 'augroup': 'VimEnter', 'frozen': 1, 'merged': 1 }, ['github.com/zchee/vim-go'])
  " call dein#add('tweekmonster/hl-goimport.vim', { 'on_ft': ['go'] })
  " call dein#add('zchee/vim-go-slide')
  " call dein#add('rhysd/vim-goyacc')
  " call dein#local(s:gopath.'/src/',  { 'frozen': 1, 'merged': 0, 'on_ft': ['go'] }, ['github.com/garyburd/vigor'])

  "" C Family:
  call dein#add('vim-jp/vim-cpp')
  call dein#add('octol/vim-cpp-enhanced-highlight', { 'lazy': 1 })
  call dein#add('bfrg/vim-cpp-modern')
  "" Swift:
  call dein#add('keith/swift.vim')
  "" CMake:
  call dein#add('pboettch/vim-cmake-syntax')

  "" Python:
  call dein#add('davidhalter/jedi-vim', {'lazy': 1, 'on_ft': ['python', 'cython', 'pyrex'] })
  " call dein#add('python-mode/python-mode')
  call dein#add('hynek/vim-python-pep8-indent')

  "" Rust:
  call dein#add('rust-lang/rust.vim', { 'on_ft': ['rust'] })

  "" Docker:
  call dein#add('ekalinin/Dockerfile.vim')

  "" Kubernetes:
  call dein#add('andrewstuart/vim-kubernetes')

  "" Serializer:
  call dein#add('uarun/vim-protobuf')

  "" Bazel:
  call dein#add('google/vim-maktaba', { 'on_source': ['vim-bazel'] })
  call dein#add('bazelbuild/vim-bazel', { 'on_ft': ['bazel'] })

  "" Assembly:
  call dein#add('Shirk/vim-gas')

  "" TypeScript:
  call dein#add('HerringtonDarkholme/yats.vim')

  "" Binary:
  call dein#add('Shougo/vinarise.vim', { 'on_cmd': ['Vinarise', 'VinarisePluginDump'] })

  "" Markdown:
  call dein#add('moorereason/vim-markdownfmt')
  call dein#add('iamcco/markdown-preview.nvim')

  "" Vim:
  call dein#add('vim-jp/vimdoc-ja')
  call dein#add('vim-jp/syntax-vim-ex')
  call dein#add('google/vim-searchindex')

  "" Shell:
  call dein#add('chrisbra/vim-sh-indent')

  "" Yaml:
  call dein#add('stephpy/vim-yaml')
  call dein#add('mrk21/yaml-vim')

  "" Toml:
  call dein#add('cespare/vim-toml')

  "" Json JsonC:
  call dein#add('elzr/vim-json')

  "" JsonSchema:
  call dein#add('Quramy/vison')

  "" GraphQL:
  call dein#add('jparise/vim-graphql')

  "" Tmux:
  call dein#add('tmux-plugins/vim-tmux')

  "" TerraFrom:
  call dein#add('hashivim/vim-terraform')

  "" Protobuf:
  call dein#add('uarun/vim-protobuf')
  call dein#add('uber/prototool', {'rtp': 'vim/prototool'} )

  "" TinyScheme:  for macOS sandbox-exec profile *.sb tinyscheme filetype
  call dein#add('vim-scripts/vim-niji', { 'on_ft': ['scheme'] })

  "" PlantUML:
  call dein#add('aklt/plantuml-syntax')
  call dein#add('scrooloose/vim-slumlord')

  " Testing Plugin:
  " call dein#add('rhysd/vim-gfm-syntax', { 'on_ft': ['markdown'] })
  call dein#add('juliosueiras/vim-terraform-completion')
  " call dein#add('cocopon/pgmnt.vim', { 'on_cmd': ['PgmntDevInspect'] })

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

if !exists('g:syntax_on')
  silent! syntax enable
endif

" -------------------------------------------------------------------------------------------------
" Color:

""" Global:
"highlight! TermCursor    gui=none      guifg=#222222    guibg=#ffffff
"highlight! TermCursorNC  gui=reverse   guifg=#222222    guibg=#ffffff

" #cc6666
"highlight! goStdlibErr        gui=Bold    guifg=#ff005f    guibg=None
"highlight! goString           gui=None    guifg=#92999f    guibg=None
"highlight! goComment          gui=None    guifg=#838c93    guibg=None
"highlight! goField            gui=Bold    guifg=#a1cbc5    guibg=None
"highlight! link               goStdlib          Statement
"highlight! link               goStdlibReturn    PreProc
"highlight! link               goImportedPkg     Statement
"highlight! link               goFormatSpecifier PreProc

"" Python:
highlight! pythonSpaceError   gui=None    guifg=#787f86    guibg=#787f86
highlight! link pythonDelimiter    Special
highlight! link pythonNone    pythonFunction
highlight! link pythonSelf    pythonOperator
syn keyword pythonDecorator True False

"" C:
let g:c_ansi_constants = 1
let g:c_ansi_typedefs = 1
let g:c_comment_strings = 1
let g:c_gnu = 0
let g:c_no_curly_error = 1
let g:c_no_tab_space_error = 1
let g:c_no_trail_space_error = 1
let g:c_syntax_for_h = 0
highlight! cCustomFunc  gui=Bold    guifg=#f0c674    guibg=None
highlight! cErr         gui=Bold    guifg=#ff005f    guibg=None

" CPP:
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

highlight! doxygenBrief                gui=None guifg=#81a2be guibg=None
highlight! doxygenSpecialMultilineDesc gui=None guifg=#81a2be guibg=None
highlight! doxygenSpecialOnelineDesc   gui=None guifg=#81a2be guibg=None

function! s:autoJump()
  if line("'\"") > 1 && line("'\"") <= line("$") && &filetype != 'gitcommit' && &filetype != 'gitrebase'
    execute "silent! keepjumps normal! g`\"zz"
  endif
endfunction

function! s:autoClose()
  let s:ft = getbufvar(winbufnr(winnr()), "&filetype")
  if winnr('$') == 1 && s:ft == "qf" || s:ft == 'vaffle' || s:ft == 'nerdtree'
    quit!
  endif
endfunction

"" Terminel:
function! s:nvim_terminal_config()
  if exists('g:loaded_nvim_terminal_config')
    silent! finish
  endif
  let g:loaded_nvim_terminal_config = 1

  let g:terminal_scrollback_buffer_size = 100000
  let s:num = 0
  "        black      red        green      yellow     blue       magenta    cyan       white
  for s:color in [
        \ '#101112', '#b24e4e', '#9da45a', '#f0c674', '#5f819d', '#85678f', '#5e8d87', '#707880',
        \ '#373b41', '#cc6666', '#a0a85c', '#f0c674', '#81a2be', '#b294bb', '#8abeb7', '#c5c8c6',
        \ ]
    let g:terminal_color_{s:num} = s:color
    let s:num += 1
  endfor
endfunction

" Markdown:
" http://mattn.kaoriya.net/software/vim/20140523124903.html
let g:markdown_fenced_languages = [
      \ 'asm',
      \ 'c',
      \ 'cpp',
      \ 'go',
      \ 'javascript',
      \ 'json',
      \ 'python',
      \ 'sh',
      \ 'toml',
      \ 'vim',
      \ 'yaml',
      \ ]
let g:slide_fenced_languages = [
      \ 'asm',
      \ 'c',
      \ 'cpp',
      \ 'go',
      \ 'javascript',
      \ 'json',
      \ 'python',
      \ 'sh',
      \ 'toml',
      \ 'vim',
      \ 'yaml',
      \ ]
"" VimMarkdownfmt:
let g:markdownfmt_command = 'markdownfmt'
let g:markdownfmt_options = ''
let g:markdownfmt_autosave = 0
let g:markdownfmt_fail_silently = 0

"" Deoplete:
" core
let g:deoplete#enable_at_startup = 1
" 'around', 'base', 'buffer', 'dictionary', 'file', 'member', 'omni', 'tag'
let s:default_ignore_sources = ['around', 'dictionary', 'member', 'omni', 'tag']
let s:deoplete_custom_option = {
      \ 'auto_complete': v:true,
      \ 'auto_complete_delay': 0,
      \ 'auto_refresh_delay': 20,
      \ 'camel_case': v:true,
      \ 'delimiters': ['/'],
      \ 'ignore_case': v:true,
      \ 'ignore_sources': {
      \   '_': s:default_ignore_sources+['LanguageClient'],
      \   'c': s:default_ignore_sources+['buffer'],
      \   'cpp': s:default_ignore_sources+['buffer'],
      \   'dockerfile': s:default_ignore_sources,
      \   'javascript': s:default_ignore_sources,
      \   'python': s:default_ignore_sources,
      \   'rust': s:default_ignore_sources,
      \   'sh': s:default_ignore_sources,
      \   'swift': s:default_ignore_sources,
      \   'typescript': s:default_ignore_sources,
      \   'yaml': s:default_ignore_sources+['buffer'],
      \   'yaml.docker-compose': s:default_ignore_sources+['buffer'],
      \   'zsh': s:default_ignore_sources,
      \ },
      \ 'max_list': 1000,
      \ 'min_pattern_length': 1,
      \ 'num_processes': 0,
      \ 'on_insert_enter': v:true,
      \ 'on_text_changed_i': v:true,
      \ 'prev_completion_mode': 'filter',
      \ 'refresh_always': v:true,
      \ 'skip_multibyte': v:true,
      \ 'skip_chars': ['(', ')'],
      \ 'smart_case': v:true,
      \ }
call deoplete#custom#option(s:deoplete_custom_option)
call deoplete#custom#source('_', 'converters', ['converter_remove_paren', 'converter_auto_paren', 'converter_remove_overlap'])
" call deoplete#custom#source('_', 'matchers', ['matcher_cpsm'])  " can't build with pypy3
call deoplete#custom#source('_', 'sorters', ['sorter_rank'])
call deoplete#custom#source('buffer', 'rank', 10)
call deoplete#custom#source('go', 'rank', 1000)
call deoplete#custom#source('go', 'sorters', ['sorter_rank'])
call deoplete#custom#source('go', 'disabled_syntaxes', ['Comment'])
call deoplete#custom#source('jedi', 'disabled_syntaxes', ['Comment'])
call deoplete#custom#source('LanguageClient', 'disabled_syntaxes', ['Comment'])
call deoplete#custom#source('LanguageClient', 'mark', '[LSP]')
call deoplete#custom#source('LanguageClient', 'min_pattern_length', 1)
call deoplete#custom#source('LanguageClient', 'rank', 1000)
call deoplete#custom#source('vim', 'disabled_syntaxes', ['Comment'])

" source
" LLVM library path
if isdirectory("/opt/llvm/devel/lib")
  let s:llvm_library_path = '/opt/llvm/devel/lib'
  let s:llvm_clang_version = '8.0.0'
elseif isdirectory("/opt/llvm/stable/lib")
  let s:llvm_library_path = '/opt/llvm/stable/lib'
  let s:llvm_clang_version = '6.0.0'
else
  let s:llvm_library_path = '/Library/Developer/CommandLineTools/usr/lib'
  let s:llvm_clang_version = '10.0.0'
endif
"" go
let s:use_gocode_mdempsky = 0
let s:use_gocode_stamblerre = 0
let g:deoplete#sources#go#gocode_binary = 'gocode'
let g:deoplete#sources#go#gocode_sock = 'tcp'
if get(s:, 'use_gocode_mdempsky', 0)
  let g:deoplete#sources#go#gocode_binary = s:gopath.'/bin/gocode-mdempsky'
  let g:deoplete#sources#go#builtin_objects = 1
  let g:deoplete#sources#go#cache = 1
  let g:deoplete#sources#go#fallback_to_source = 1
  let g:deoplete#sources#go#source_importer = 0
  let g:deoplete#sources#go#unimported_packages = 1
elseif get(s:, 'use_gocode_stamblerre', 0)
  let g:deoplete#sources#go#gocode_binary = s:gopath.'/bin/gocode-stamblerre'
  let g:deoplete#sources#go#builtin_objects = 1
  let g:deoplete#sources#go#cache = 1
  let g:deoplete#sources#go#fallback_to_source = 1
  let g:deoplete#sources#go#source_importer = 0
  let g:deoplete#sources#go#unimported_packages = 1
endif
let g:deoplete#sources#go#auto_goos = 0
let g:deoplete#sources#go#cgo = 0
let g:deoplete#sources#go#cgo#libclang_path = s:llvm_library_path . '/libclang.dylib'
" let g:deoplete#sources#go#cgo#sort_algo = 'priority'  " 'alphabetical'
let g:deoplete#sources#go#pointer = 0
" let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
"" clang
let g:deoplete#sources#clang#clang_header = s:llvm_library_path . '/clang'
let g:deoplete#sources#clang#libclang_path = s:llvm_library_path . '/libclang.dylib'
let g:deoplete#sources#clang#flags = [
      \ '-I' . $HOME . '/.local/include',
      \ '-I/usr/local/include',
      \ '-I' . s:llvm_library_path . '/clang/' . s:llvm_clang_version . '/include',
      \ '-I/usr/include',
      \ '-F/System/Library/Frameworks',
      \ '-F/Library/Frameworks',
      \ '-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk',
      \ ]  " clang++ -v -E -x c - -v < /dev/null
"" jedi
let g:deoplete#sources#jedi#statement_length = 0
let g:deoplete#sources#jedi#short_types = 0
let g:deoplete#sources#jedi#show_docstring = 1
let g:deoplete#sources#jedi#enable_typeinfo = 1
let g:deoplete#sources#jedi#ignore_errors = 1
let g:deoplete#sources#jedi#extra_path = []
let g:deoplete#sources#jedi#python_path = g:python3_host_prog
" let g:deoplete#sources#jedi#worker_threads = 2
let g:deoplete#sources#jedi#python_path = g:python3_host_prog
let g:deoplete#sources#asm#go_mode = 1
" neopairs
let g:neopairs#enable = 1
" echodoc
let g:echodoc#enable_at_startup = 1
let g:echodoc#highlight_identifier = "Identifier"
let g:echodoc#highlight_arguments = "Special"
let g:echodoc#highlight_trailing = "Type"
let g:echodoc#type = 'virtual'
" debug
" call deoplete#custom#option('profile', v:true)
" call deoplete#enable_logging('DEBUG', $DEOPLETE_LOG_FILE)
" call deoplete#custom#source('go', 'is_debug_enabled', 1)
" call deoplete#enable()


"" LanguageClient:
let g:LanguageClient_autoStart = 1
let g:LanguageClient_autoStop = 1
let g:LanguageClient_changeThrottle = 0.5
let g:LanguageClient_completionPreferTextEdit = 0  " should be 0
let g:LanguageClient_diagnosticsList = 'Quickfix'  " default: Quickfix, Location, Disabled
let g:LanguageClient_hasSnippetSupport = 0
let g:LanguageClient_hoverPreview = 'Auto'  " Always, Auto, Never
let g:LanguageClient_selectionUI = 'quickfix'  " fzf, quickfix, location-list
let g:LanguageClient_windowLogMessageLevel = "Warning"  " Error, default: Warning, Info, Log
let s:LanguageClient_serverCommands_c = [
      \ 'clangd',
      \ '-all-scopes-completion',
      \ '-background-index',
      \ '-clang-tidy',
      \ '-compile-commands-dir=' . trim(finddir('.git', '.;'), '.git') . 'build',
      \ '-compile_args_from=filesystem',
      \ '-completion-style=detailed',
      \ '-function-arg-placeholders',
      \ '-header-insertion-decorators',
      \ '-include-ineligible-results',
      \ '-index',
      \ '-index-file=clangd.dex',
      \ '-input-style=standard',
      \ '-j=12',
      \ '-pch-storage=disk',
      \ '-resource-dir=' . s:llvm_library_path . '/clang/' . s:llvm_clang_version . '/include',
      \ '-static-func-full-module-prefix',
      \ '-use-dbg-addr',
      \ '-use-dex-index',
      \ '-view-background',
      \ ]
let s:node_exec = ['node', '--experimental-modules', '--experimental-vm-modules', '--no-warnings']
let g:LanguageClient_serverCommands = {
      \ 'c': s:LanguageClient_serverCommands_c,
      \ 'cpp': s:LanguageClient_serverCommands_c,
      \ 'javascript': s:node_exec + [$XDG_DATA_HOME . '/yarn/global/node_modules/javascript-typescript-langserver/lib/language-server-stdio.js'],
      \ 'json': ['vscode-json-languageserver', '--stdio'],
      \ 'python': ['/usr/local/bin/pyls'],
      \ 'ruby': ['/usr/local/var/rbenv/shims/solargraph', 'stdio'],
      \ 'rust': ['/usr/local/rust/cargo/bin/rustup', 'run', 'beta', 'rls'],
      \ 'swift': ['/usr/local/bin/sourcekit-lsp'],
      \ }
      "\ 'go': [s:gopath . '/bin/gopls', 'serve', '-logfile', '/tmp/gopls.log'],
      "\ 'sh': ['/usr/local/var/yarn/bin/bash-language-server', 'start'],
      "\ 'zsh': ['/usr/local/var/yarn/bin/bash-language-server', 'start'],
let s:LanguageClient_rootMarkers_c = ['autogen.sh', 'configure', 'WORKSPACE']
let g:LanguageClient_rootMarkers = {
      \ 'c': s:LanguageClient_rootMarkers_c,
      \ 'cpp': s:LanguageClient_rootMarkers_c,
      \ 'go': ['go.mod', 'Gopkg.toml', 'Makefile'],
      \ 'objc': s:LanguageClient_rootMarkers_c,
      \ 'python': ['setup.py', 'LICENSE'],
      \ }
let g:LanguageClient_loadSettings = 1
" let g:LanguageClient_loggingFile = '/tmp/LanguageClient.log'
" let g:LanguageClient_serverStderr = '/tmp/LanguageServer.log'
" let g:LanguageClient_loggingLevel = 'DEBUG'  " default: WARN

function! s:languageclient_setup()
  if has_key(g:LanguageClient_serverCommands, &filetype)
    setlocal formatexpr=LanguageClient#textDocument_rangeFormatting()
    nnoremap <silent><buffer><C-]>            :<C-u>call LanguageClient#textDocument_definition()<CR>
    nnoremap <silent><buffer><Leader>e        :<C-u>call LanguageClient#textDocument_rename()<CR>
    nnoremap <silent><buffer>K                :<C-u>call LanguageClient#textDocument_hover()<CR>
  endif
endfunction

function! s:lsp_set_schema(args)
  if &filetype !=? "yaml"
    return
  endif

  let l:filepath = expand('%:p')
  let l:filename = fnamemodify(l:filepath, ':t')
  let l:schema = 'default'
  let l:config_file = ''
  let l:config = ''

  if len(a:args)
    let l:schema = a:args
    let l:config_file = expand($XDG_CONFIG_HOME . '/nvim/lsp/yaml/' . l:schema . '.json')
    let l:config = json_decode(readfile(l:config_file))
    call LanguageClient#Notify('workspace/didChangeConfiguration', { 'settings': l:config })
    return
  endif

  if l:filepath =~# '**/kubernetes/.*/*.yaml' || l:filename =~# 'kubectl-edit-.*.yaml'
    let l:schema = 'kubernetes'
  elseif l:filepath =~# '**/openapi.*/.*/*.yaml'
    let l:schema = 'openapi'
  elseif l:filename =~# '\v\.?cloudbuild\.yaml$'
    let l:schema = 'cloudbuild'
  elseif l:filepath =~# '**/.circleci/config.yml'
    let l:schema = 'circleci'
  elseif l:filename =~# '\v\.?codecov\.yml$'
    let l:schema = 'codecov'
  elseif l:filename =~# '\vhelmfile\.yaml$'
    let l:schema = 'helmfile'
  elseif l:filename =~# '\v\.?appveyor\.yml$'
    let l:schema = 'appveyor'
  elseif l:filename =~# '\vswagger.*\.ya?ml$'
    let l:schema = 'swagger-2.0'
  elseif l:filename =~# '\vdocker-compose.*\.ya?ml'
    let l:schema = 'docker-compose'
  elseif l:filename ==# '.travis.yml'
    let l:schema = 'travis'
  endif

  let l:config_file = expand($XDG_CONFIG_HOME . '/nvim/lsp/yaml/' . l:schema . '.json')
  let l:config = json_decode(readfile(l:config_file))

  echom 'yaml-language-server: schema: ' . l:schema
  echom 'yaml-language-server: config_file: ' . l:config_file

  call LanguageClient#Notify('workspace/didChangeConfiguration', { 'settings': l:config })
endfunction
command! -nargs=* LSPYamlSetSchema call <SID>lsp_set_schema(<q-args>)

" Ale:
let g:ale_cache_executable_check_failures = 1
let g:ale_change_sign_column_color = 0
let g:ale_completion_enabled = 0
let g:ale_cursor_detail = 1
let g:ale_echo_cursor = 1
let g:ale_echo_delay = 20
let g:ale_fix_on_save = 1
let g:ale_keep_list_window_open = 0
let g:ale_lint_delay = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_list_window_size = 10
let g:ale_open_list = 0
let g:ale_set_highlights = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_sign_column_always = 1
let g:ale_use_global_executables = 1
let g:ale_virtualtext_cursor = 1
let g:ale_virtualtext_delay = 20
let g:ale_warn_about_trailing_blank_lines = 1
let g:ale_warn_about_trailing_whitespace = 1
"" linters
let g:ale_linters = {}
let g:ale_linters.dockerfile = ['hadolint']
let g:ale_linters.go = []  " let g:ale_linters.go = ['gofmt', 'go vet', 'golint', 'goimports', 'golangci-lint']
let g:ale_linters.markdown = ['textlint']
let g:ale_linters.proto = ['protoc-gen-lint']  " ['prototool', 'protoc-gen-lint']
let g:ale_linters.python = ['flake8', 'mypy', 'pylint', 'pyls']
let g:ale_linters.rust = ['cargo']
let g:ale_linters.sh = ['shellcheck', 'shfmt', 'sh-language-server', 'shell']
let g:ale_linters.terraform = ['fmt', 'tflint']
let g:ale_linters.yaml = ['yamllint']
let g:ale_linters.zsh = ['shell']  " ['shellcheck', 'shfmt', 'shell']
"" fixers
let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'markdown': [],
      \ }
"" Go:
let g:ale_go_gofmt_options = '-s'
let g:ale_go_govet_options = '-all'
"" Sh:
let g:ale_sh_shell_default_shell = 'bash'
let g:ale_sh_shellcheck_options = '-x'
let g:ale_sh_shellcheck_exclusions = 'SC1072 SC1090'
let g:ale_sh_shfmt_options = '-s -ln bash'
"" Python:
let g:ale_yaml_yamllint_options = '--config-file=' . fnamemodify(findfile('.yamllint', '.;'), ':p')
"" Terraform:
let g:ale_terraform_fmt_executable = 'terraform'
let g:ale_terraform_fmt_options = ''
let g:ale_terraform_tflint_options = '-f json'
"" Dockerfile:
let g:ale_dockerfile_hadolint_use_docker = 'yes'
let g:ale_dockerfile_hadolint_image = 'gcr.io/container-image/cloud-builders/hadolint:1.16.0'


" Caw:
let g:caw_hatpos_skip_blank_line = 0
let g:caw_no_default_keymappings = 1
let g:caw_operator_keymappings = 0


" LightLine:
" https://donniewest.com/a-guide-to-basic-neovim-plugins
let g:lightline = {}
function! DeviconsGetFileTypeSymbol()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction
function! DeviconsGetFileFormatSymbol()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction
" function! LightlineModified()
"   let map = { 'V': 'n', "\<C-v>": 'n', 's': 'n', 'v': 'n', "\<C-s>": 'n', 'c': 'n', 'R': 'n'}
"   let mode = get(map, mode()[0], mode()[0])
"   let bgcolor = {'n': [240, '#B5BD68'], 'i': [31, '#82AAFF']}
"   let color = get(bgcolor, mode, bgcolor.n)
"   exe printf('hi ModifiedColor ctermfg=196 ctermbg=%d guifg=#282a2e guibg=%s gui=bold term=bold cterm=bold', color[0], color[1])
"   return &modified ? '+' : &modifiable ? '' : '-'
" endfunction
function! LightlineModified()
  hi ModifiedColor ctermfg=167 guifg=#cf6a4c ctermbg=242 guibg=#666656 term=bold cterm=bold
  return &modified ? '+' : &modifiable ? '' : '-'
endfunction
let g:lightline.component = {
      \ 'absolutepath': '%F',
      \ 'bufnum': '%n',
      \ 'charvalue': '%b',
      \ 'charvaluehex': '%B',
      \ 'close': '%999X X ',
      \ 'column': '%c',
      \ 'fileencoding': '%{&fenc!=#""?&fenc:&enc}',
      \ 'filename': '%{expand(''%:p'')}',
      \ 'line': '%l',
      \ 'lineinfo': '%3l?  %-2v',
      \ 'mode': '%{lightline#mode()}',
      \ 'modified': '%( %#ModifiedColor#%{LightlineModified()} %)',
      \ 'paste': '%{&paste?"PASTE":""}',
      \ 'percent': '%3p%%',
      \ 'percentwin': '%P',
      \ 'readonly': '%R',
      \ 'relativepath': '%f',
      \ 'spell': '%{&spell?&spelllang:""}',
      \ 'winnr': '%{winnr()}',
      \ }
let g:lightline.component_expand = {
      \ 'linter_checking': 'lightline#ale#checking',
      \ 'linter_errors': 'lightline#ale#errors',
      \ 'linter_ok': 'lightline#ale#ok',
      \ 'linter_warnings': 'lightline#ale#warnings',
      \ }
let g:lightline.component_type = {
      \ 'modified': 'raw',
      \ 'linter_checking': 'left',
      \ 'linter_errors': 'error',
      \ 'linter_ok': 'left',
      \ 'linter_warnings': 'warning',
      \ }
let g:lightline.component_function = {
      \ 'fileformat': 'DeviconsGetFileFormatSymbol',
      \ 'filetype': 'DeviconsGetFileTypeSymbol',
      \ 'gitbranch': 'gina#component#repo#branch',
      \ }
let g:lightline.active = {
      \ 'left': [ ['mode', 'paste'], ['filename', 'gitbranch'] ],
      \ 'right': [ [ 'lineinfo', 'percent' ], [ 'filetype', 'fileformat', 'fileencoding' ], [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ] ]
      \ }
let g:lightline.inactive = {
      \ 'left': [ [ 'filename' ] ],
      \ 'right': [ [ 'lineinfo' ], [ 'percent' ] ]
      \ }
let g:lightline.tabline = {
      \ 'left': [ [ 'tabs' ] ],
      \ 'right': [ [ 'close' ] ]
      \ }
let g:lightline.tab = {
      \ 'active': [ 'tabnum', 'filename', 'modified' ],
      \ 'inactive': [ 'tabnum', 'filename', 'modified' ]
      \ }
let g:lightline.enable = { 'statusline': 1, 'tabline': 1 }
let g:lightline.separator = { 'left': '?', 'right': '?' }
let g:lightline.subseparator = { 'left': '? ', 'right': '? ' }
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#enable_devicons = 1

function! s:MaybeUpdateLightline()
  if exists('#lightline')
    call lightline#update()
  end
endfunction

" GitGutter:
let g:gitgutter_async = 1
let g:gitgutter_eager = 0
let g:gitgutter_enabled = 1
let g:gItgutter_highlight_lines = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_max_signs = 100000
let g:gitgutter_diff_args = '--ignore-all-space'


" Accelerated JK:
let g:accelerated_jk_enable_deceleration = 0
let g:accelerated_jk_acceleration_limit = 150 " 250
let g:accelerated_jk_acceleration_table = [7,12,17,21,24,26,28,30]


" VimAutoPep8:
let g:autopep8_aggressive = 2
let g:autopep8_disable_show_diff = 1
let g:autopep8_max_line_length = 99


" ParenMatch:
"let g:cursorword = 0


" SonicTemplate:
"let g:sonictemplate_vim_template_dir = [expand($XDG_CONFIG_HOME.'/nvim/template')]


" Vaffle:
"let g:vaffle_auto_cd = 1
"let g:vaffle_force_delete = 1
"let g:vaffle_show_hidden_files = 1
""let g:vaffle_use_default_mappings = 1


" Editorconfig:
"let g:EditorConfig_core_mode = 'python_external'


" Trans:
"let g:trans_lang_credentials_file = $XDG_CONFIG_HOME.'/gcloud/credentials/kouzoh-p-zchee/trans-nvim.json'
" let g:trans_lang_cutset = ['//', '#']
"let g:trans_lang_locale = 'ja'


" OpenBrowser:
"let g:openbrowser_search_engines = {
"      \ 'google': 'http://google.com/search?q={query}&tbs=qdr:y',
"      \}
" let g:openbrowser_message_verbosity = 0

" EasyAlign:
" let g:easy_align_ignore_groups = []

" NERDTree:
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeDirArrowCollapsible = '?'
let g:NERDTreeDirArrowExpandable  = '?'
let g:NERDTreeDirArrows = 1
let g:NERDTreeHijackNetrw = 0
let g:NERDTreeMinimalUI = 1
let g:NERDTreeMouseMode = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeSortHiddenFirst = 1
" mapping

" -------------------------------------------------------------------------------------------------
" Previous use plugins

" Airline:
" let g:airline#extensions#ale#enabled = 1
" let g:airline#extensions#ale#error_symbol = 'E:'
" let g:airline#extensions#ale#warning_symbol = 'W:'
" let g:airline#extensions#ale#show_line_numbers = 1
" let g:airline#extensions#ale#open_lnum_symbol = '(L'
" let g:airline#extensions#ale#close_lnum_symbol = ')'
" let g:airline#extensions#branch#enabled = 1
" let g:airline#extensions#branch#custom_head = 'gina#component#repo#branch'
" let g:airline#extensions#hunks#enabled = 0
" let g:airline#extensions#quickfix#location_text = 'Location'
" let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
" let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline#extensions#tabline#buffers_label = 'b'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#exclude_preview = 1
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#show_buffers = 0
" let g:airline#extensions#tabline#show_splits = 1
" let g:airline#extensions#tabline#show_tab_nr = 0
" let g:airline#extensions#tabline#show_tab_type = 1
" let g:airline#extensions#tabline#show_tabs = 1
" let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
" let g:airline#extensions#tabline#tab_nr_type = 2
" let g:airline#extensions#tabline#tabs_label = 't'
" let g:airline#extensions#tagbar#enabled = 0
" let g:airline#extensions#languageclient#enabled = 1
" let g:airline#extensions#whitespace#mixed_indent_algo = 2
" let g:airline#extensions#wordcount#enabled = 0
" let g:airline_exclude_filetypes = ['fzf']
" let g:airline_highlighting_cache = 1
" let g:airline_inactive_collapse = 0
" let g:airline_powerline_fonts = 1
" let g:airline_skip_empty_sections = 1
" let g:airline_theme = 'hybridline'
" if dein#is_sourced('vim-airline')
"   let g:airline_section_c = airline#section#create(['%<', 'readonly', '%{expand(''%:p'')}'])
" endif

" -------------------------------------------------------------------------------------------------
" Functions:

" Filetye Execute:
function! s:filetype_exec(...)
  let s:ft = getbufvar(winbufnr(winnr()), "&filetype")
  if s:ft == a:1
    execute a:2
  endif
endfunction


" Help:
" https://github.com/rhysd/dotfiles/blob/master/nvimrc#L380-L405
function! s:smart_help(args)
  try
    if winwidth(0) > winheight(0) * 2
      execute 'vertical rightbelow help ' . a:args
    else
      execute 'rightbelow help ' . a:args
    endif
  catch /^Vim\%((\a\+)\)\=:E149/
    echohl ErrorMsg
    echomsg "E149: Sorry, no help for " . a:args
    echohl None
  endtry
endfunction
command! -nargs=* -complete=help Help call <SID>smart_help(<q-args>)

" HelpGrep:
function! s:smart_helpgrep(args)
  try
    if winwidth(0) > winheight(0) * 2
      execute 'vertical rightbelow helpgrep ' . a:args . '@en'
    else
      execute 'rightbelow helpgrep ' . a:args . '@en'
    endif
  catch /^Vim\%((\a\+)\)\=:E149/
    echohl ErrorMsg
    echomsg "E149: Sorry, no help for " . a:args
    echohl None
  endtry
  copen
endfunction
command! -nargs=* -complete=help HelpGrep call <SID>smart_helpgrep(<q-args>)


" SyntaxInfo:
" Display syntax infomation on under the current cursor
" for syntax ID
function! s:get_syn_id(transparent)
  let s:synid = synID(line("."), col("."), 1)
  if a:transparent
    return synIDtrans(s:synid)
  else
    return s:synid
  endif
endfunction
" for syntax attributes
function! s:get_syn_attr(synid)
  let s:name = synIDattr(a:synid, "name")
  let s:bold  = synIDattr(a:synid, "bold", "gui")
  let s:guifg = synIDattr(a:synid, "fg", "gui")
  let s:guibg = synIDattr(a:synid, "bg", "gui")
  let s:attr = {
        \ "name": s:name,
        \ "bold": s:bold,
        \ "guifg": s:guifg,
        \ "guibg": s:guibg,
        \ }
  return s:attr
endfunction
" return syntax information
function! s:get_syn_info(cword)
  let s:baseSyn = s:get_syn_attr(s:get_syn_id(0))
  let s:baseSynInfo = "name: " . s:baseSyn.name .
        \ " bold: " . (s:baseSyn.bold == 1 ? 'true' : 'false' ) . "," .
        \ " guifg: " . s:baseSyn.guifg . "," .
        \ " guibg: " . s:baseSyn.guibg
  let s:linkedSyn = s:get_syn_attr(s:get_syn_id(1))
  let s:linkedSynInfo =  "name: " . s:linkedSyn.name .
        \ " bold: " .  (s:linkedSyn.bold == 1 ? 'true' : 'false' ) . "," .
        \ " guifg: " . s:linkedSyn.guifg . "," .
        \ " guibg: " . s:linkedSyn.guibg
  echomsg a:cword . ':'
  echomsg s:baseSynInfo
  echomsg '  ' . "link to"
  echomsg s:linkedSynInfo
endfunction
command! SyntaxInfo call s:get_syn_info(expand('<cword>'))


" ClearMessage:
command! ClearMessage for n in range(200) | echom "" | endfor


" Binary Edit Mode:
" need open nvim with `-b` flag
function! BinaryMode() abort
  if !has('binary')
    echoerr "BinaryMode must be 'binary' option"
    return
  endif

  execute '%!xxd'
endfunction


" Less Like Mapping:
function! LessMap()
  set colorcolumn=""
  let b:gitgutter_enabled = 0
  nnoremap <silent><buffer>u <C-u>
  nnoremap <silent><buffer>d <C-d>
  nnoremap <silent><buffer>q :q<CR>
endfunction


" Profiling Syntax:
function! ProfileSyntax() abort
  " Initial and cleanup syntime
  redraw!
  syntime clear
  " Profiling syntax regexp
  syntime on
  redraw!
  QuickRun -type vim -src 'syntime report'
endfunction


" Open the C/C++ online document
" https://github.com/rhysd/dogfiles/blob/926f2b9c1856bbf3a8090f430831f2c94d7cc410/vimrc#L1399-L1423
function! s:open_online_cfamily_doc()
  call dein#source('open-browser.vim')
  let l:l = getline('.')

  if l:l =~# '^\s*#\s*include\s\+<.\+>'
    let l:header = matchstr(l, '^\s*#\s*include\s\+<\zs.\+\ze>')
    if header =~# '^boost'
      "https://www.google.co.jp/search?hl=en&as_q=int64_max&as_sitesearch=cpprefjp.github.io
      execute 'OpenBrowser' 'http://www.google.com/cse?cx=011577717147771266991:jigzgqluebe&q='.matchstr(header, 'boost/\zs[^/>]\+\ze')
      return
    else
      execute 'OpenBrowser' 'http://ja.cppreference.com/mwiki/index.php?title=Special:Search&search='.matchstr(header, '\zs[^/>]\+\ze')
      return
    endif
  else
    let l:cword = expand('<cword>')
    if cword ==# ''
      return
    endif
    let l:line_head = getline('.')[:col('.')-1]
    if line_head =~# 'boost::[[:alnum:]:]*$'
      execute 'OpenBrowser' 'http://www.google.com/cse?cx=011577717147771266991:jigzgqluebe&q='.l:cword
    elseif line_head =~# 'std::[[:alnum:]:]*$'
      execute 'OpenBrowser' 'https://www.google.co.jp/search?hl=en&as_sitesearch=cpprefjp.github.io&as_q='.l:cword
      execute 'OpenBrowser' 'http://ja.cppreference.com/mwiki/index.php?title=Special:Search&search='.l:cword
    else
      let l:name = synIDattr(synIDtrans(synID(line("."), col("."), 1)), 'name')
      if l:name == 'Statement'
        execute 'OpenBrowser' 'http://ja.cppreference.com/w/c/language/'.l:cword
      else
        execute 'OpenBrowser' 'http://ja.cppreference.com/mwiki/index.php?title=Special:Search&search='.l:cword
      endif
    endif
  endif
endfunction


" Trim Whitespace:
function! s:trimSpace()
  if !&binary && &filetype != 'diff' && &filetype != 'markdown'
    normal mz
    normal Hmy
    %s/\s\+$//e
    normal 'yz<CR>
    normal `z
  endif
endfunction
command! TrimSpace call s:trimSpace()


" Lr:
" <lr-args> to browse lr(1) results in a new window, press return to open file in new window.
command! -nargs=* -complete=file Lr
      \ new | setl bt=nofile noswf | silent exe '0r!lr -Q ' <q-args> |
      \ 0 | res | map <buffer><C-M> $<C-W>F<C-W>_

" -------------------------------------------------------------------------------------------------
" Command:

" Capture:
" http://qiita.com/sgur/items/9e243f13caa4ff294fa8
command! -nargs=+ -complete=command Capture QuickRun -type vim -src <q-args>

" Shfmt:
command! -nargs=0 -bang -complete=command Shfmt %!shfmt -i 2
