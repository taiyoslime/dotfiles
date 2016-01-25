set backspace=indent,eol,start
set notitle
set number
set laststatus=2
set backupdir=~/.vim/tmp
set hlsearch
set autoindent
set shiftwidth=4
set tabstop=4
set shiftwidth=4
set hidden

"-----------------------
"setting keybind.
"-----------------------
"out of insert
imap <silent> jj <Esc>

"go to top or buttom
"nmap 0 $
"nmap 1 0

"move cursol in insertmode
"imap <C-j> <Down>
"imap <C-k> <Up>
"imap <C-h> <Left>
"imap <C-l> <Right>


"delete cursol to buttom
"imap <silent> <C-d>0 <Esc>lc$<Insert>
"yank cursol to top
"imap <silent> <C-y>e <Esc>ly0<Insert>


"------------------------
"Sart Neobundle Settings.
"------------------------
"bundleで管理するディレクトリを設定

if has ('vim_starting')
	set nocompatible	"Be iMproved

	"Required:
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

"Required:
call neobundle#begin(expand('~/.vim/bundle/'))

"neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'


NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'mattreduce/vim-mix'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'carlosgaldino/elixir-snippets'

"unite ssh"
NeoBundle 'Shougo/unite-ssh'


"NERDTree
NeoBundle 'scrooloose/nerdtree'


"syntastic
NeoBundle 'scrooloose/syntastic'
let g:syntastic_javascript_checker = ["jshint"] "JavaScriptのSyntaxチェックはjshintで
let g:syntastic_check_on_open = 0 "ファイルオープン時にはチェックをしない
let g:syntastic_check_on_save = 1 "ファイル保存時にはチェックを実施


"autoclose
NeoBundle 'Townk/vim-autoclose'


"Emmet
NeoBundle 'mattn/emmet-vim'


"quickrun
NeoBundle 'thinca/vim-quickrun'


"grep.vim
NeoBundle 'grep.vim'


"color scheme
NeoBundle 'ujihisa/unite-colorscheme'


"git control
NeoBundle 'tpope/vim-fugitive'


"remove white space after lines
 NeoBundle 'bronson/vim-trailing-whitespace'

"below thing, but vim-filer
"-------------
"complete"
NeoBundle 'Shougo/neocomplete'

"neosnippet
NeoBundle 'Shougo/neosnippet'

"neosnippet-snippets"
NeoBundle 'Shougo/neosnippet-snippets'

"neocomplache
NeoBundle 'Shougo/neocomplcache'

" neocomplete用設定
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#enable_smart_case = 1
if !exists('g:neocomplete#keyword_patterns')
	let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ = '\h\w*'

"-----------------



"nyan-modoki
"たけせー作うーにゃープラグイン
NeoBundle 'drillbits/nyan-modoki.vim'
set laststatus=2
set statusline=%F%m%r%h%w[%{&ff}]%=%{g:NyanModoki()}(%l,%c)[%P]
let g:nyan_modoki_select_cat_face_number = 4
let g:nayn_modoki_animation_enabled= 1
"unite.vim
NeoBundle 'Shougo/unite.vim'

call neobundle#end()



"Required:
filetype plugin indent on

"未インストールのプラグインがある場合インストールするか
NeoBundleCheck

"-------------------------
"End Neobundle Settings.
"-------------------------

"-------------------------
"Color settings.
"-------------------------
syntax on
syntax enable
"colorscheme solarized
"set background=dark
"let g:solarized_termcolors=256

"_______________________
"Setting GO lang.
"_______________________

if $GOROOT != ''
	set rtp+=$GOROOT/misc/vim
endif
