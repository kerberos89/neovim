"Vim-Plug
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "Precisa instalar curl ou vim-plug"
    execute "q!"
  endif
  echo "Instalando Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

"Plugins
call plug#begin(expand('~/.config/nvim/plugged'))
  Plug 'morhetz/gruvbox'
call plug#end()

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"Identação
set backspace=indent,eol,start
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"Busca
set hlsearch
set incsearch
set ignorecase
set smartcase

"Visual
syntax on
color gruvbox
set ruler
set number
set relativenumber
set laststatus=2
set mouse=a
set inccommand=split

"Habilitar hidden buffers
set hidden

