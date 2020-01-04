# LNRFILES
Es un repositorio de dotfiles con configuraciones.

# Dependencías
`Ruby`

# Instalación
    git clone https://github.com/SrEnrique/lnrfiles.git "$HOME/.lnrfiles"
    cd ~/.lnrfiles
    rake install

# Actualizar
    cd ~/.lnrfiles
    rake upgrade

# Complementos a instalar
tmux vim git wget curl

# Vim Plugins
    Plug 'junegunn/vim-easy-align'
    Plug 'https://github.com/junegunn/vim-github-dashboard.git'
    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
    Plug 'fatih/vim-go', { 'tag': '*' }
    Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'chr4/nginx.vim'
    Plug 'tpope/vim-rake'
