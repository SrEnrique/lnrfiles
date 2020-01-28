" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

	" Make sure you use single quotes
	" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
	Plug 'junegunn/vim-easy-align'
	
	" Any valid git URL is allowed
	Plug 'https://github.com/junegunn/vim-github-dashboard.git'

	" Multiple Plug commands can be written in a single line using | separators
	Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

	" On-demand loading
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

	" Using a non-master branch
	Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

	" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
	Plug 'fatih/vim-go', { 'tag': '*' }
	" Plugin options
	Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
	" Plugin outside ~/.vim/plugged with post-update hook
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	" Unmanaged plugin (manually installed and updated)
	Plug '~/my-prototype-plugin'
	Plug 'morhetz/gruvbox'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	Plug 'tpope/vim-fugitive'
	
	Plug 'airblade/vim-gitgutter'

	Plug 'chr4/nginx.vim'

  Plug 'tpope/vim-rake'
" Initialize plugin system


" Search files  https://github.com/junegunn/fzf.vim
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

call plug#end()


syntax on


set background=dark
" set mouse=a
set number



colorscheme gruvbox



" =========== Indentation ============
"

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab



" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on


" ==== Wrap  ====
set wrap       		"Don't wrap lines
set linebreak    	"Wrap lines at convenient points

let g:airline_theme='distinguished'
