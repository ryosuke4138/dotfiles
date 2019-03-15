
" ╭─────────────╥──────────────────╮
" │ Author:     ║ File:            │
" │ R.Okamae    ║ init.vim         │
" ╞═════════════╩══════════════════╡
" │ Rest of .dotfiles:             │
" │ GitHub.com/ryosuke4138/dotfiles│
" ╰────────────────────────────────╯

set nocompatible

let s:config_path = $HOME.'/.config/nvim/'
let s:config_files = [
	\'functions.vim',
	\'plugins.vim',
	\'common.vim',
	\'languages.vim',
	\'mappings.vim',
	\'plugin_conf.vim',
\]

for file in s:config_files
	if filereadable(s:config_path.file)
		exec "so ".s:config_path.file
	endif
endfor
