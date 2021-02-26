call plug#begin('~/.config/nvim/plugged')

"" [theme]
Plug 'beikome/cosme.vim'
"Plug 'morhetz/gruvbox'
"Plug 'joshdick/onedark.vim'
"Plug 'crusoexia/vim-monokai'
"Plug 'KeitaNakamura/neodark.vim
"" [startify page]
Plug 'mhinz/vim-startify'
"" [status bar]
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"" [vim-devicons]
Plug 'ryanoasis/vim-devicons'
"" [auto pairs]
Plug 'jiangmiao/auto-pairs'
"" [fast move] 
Plug 'easymotion/vim-easymotion'
"Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
"" [buffer]
"Plug 'chxuan/vim-buffer'
Plug 'junegunn/fzf',{ 'dir': '~/.fzf', 'do': './install --all'  }
"" [tagbar]
Plug 'chxuan/tagbar'
"" [text align]
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'junegunn/vim-slash'
Plug 'junegunn/gv.vim'
Plug 'Shougo/echodoc.vim'
Plug 'dense-analysis/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'voldikss/vim-floaterm'
Plug 'mbbill/undotree'
Plug 'luochen1990/rainbow'
call plug#end()"


"" [theme]
let g:onedark_termcolors=256
colorscheme cosme

"" [airline]
let g:airline_theme="cosme"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline#extensions#ale#enabled = 1

"" [easymotion]
let g:EasyMotion_smartcase = 1

"" [autopairs]
"let g:AutoPairs['<']='>'
"let g:AutoPairsMapCR = 1
"let g:AutoPairsCenterLine = 1

"" [[nerdtree]]
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'

"" [nerdtree-git-plugin]
let g:NERDTreeGitStatusIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }

"" [echodoc]
" Or, you could use neovim's floating text feature.
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'floating'
" To use a custom highlight for the float window,
" change Pmenu to your highlight group
highlight link EchoDocFloat Pmenu


" [tagbar]
let g:tagbar_width = 30


"" [fzf]
let g:fzf_preview_window      = 'right:60%'
let g:fzf_commits_log_options = '--graph --color = always --format = "%C(auto)%h%d %s %C(black)%C(bold)%cr"'

"" [undotree]
let g:undotree_DiffAutoOpen       = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators    = 1
let g:undotree_WindowLayout       = 2
let g:undotree_DiffpanelHeight    = 8
let g:undotree_SplitWidth         = 24

"" [rainbow]
let g:rainbow_active = 1
let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}

"" [startify]
source $HOME/.config/nvim/myconfig/nvim-startify.vim

"" [ale]
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights     = 0
"自定义error和warning图标
let g:ale_sign_error   = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str   = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format      = '[%linter%] %s [%severity%]'
let g:ale_linters              = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\}

"" [coc]
let g:ale_disable_lsp = 1
source $HOME/.config/nvim/myconfig/coc.vim
