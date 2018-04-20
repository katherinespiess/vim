"
"
"   ███████╗██████╗ ██╗███████╗███████╗███████╗      ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"   ██╔════╝██╔══██╗██║██╔════╝██╔════╝██╔════╝      ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"   ███████╗██████╔╝██║█████╗  ███████╗███████╗      ██║   ██║██║██╔████╔██║██████╔╝██║     
"   ╚════██║██╔═══╝ ██║██╔══╝  ╚════██║╚════██║      ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"   ███████║██║     ██║███████╗███████║███████║    ██╗╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"   ╚══════╝╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝    ╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"  
"
"  This is Gustavo Spiess's .vimrc file;
"  Feel free to use, distribute or sell it;
"  
"
"            leaders
" (you migth want to change this)
"  -----------------------------
    let maplocalleader = "-"
    let mapleader = "ç"
"  -----------------------------
"
"             Style
"  -----------------------------
    set number
    set ruler
    set tabstop=4
    set shiftwidth=4
    set smarttab
    set expandtab
    set laststatus=2
    set foldmethod=indent
"  -----------------------------
"
"            Vundle
"  -----------------------------
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    
    " pluggin manager
    Plugin 'VundleVim/Vundle.vim'
    
    " navigation tree
    Plugin 'scrooloose/nerdtree'
    
    
    " style for status row
    Plugin 'vim-airline/vim-airline'
    
    call vundle#end()
    filetype plugin indent on
"  -----------------------------
"
"       NERDTree configs
"  -----------------------------
    augroup NT
    autocmd!
    " Open NERDTree when start
    autocmd vimenter * NERDTree
    " close whent NERDTree is the only tab
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    augroup END

    " nt to open nerd tree
    nnoremap <leader>nt :NERDTree<cr>
"  -----------------------------
"
"     Case sensitiveess remap
"  -----------------------------
    cnoreabbrev W! w!
    cnoreabbrev Q! q!
    cnoreabbrev Qall! qall!
    cnoreabbrev Wq wq
    cnoreabbrev Wa wa
    cnoreabbrev wQ wq
    cnoreabbrev WQ wq
    cnoreabbrev W w
    cnoreabbrev Q q
    cnoreabbrev Qall qall
"  -----------------------------
"
"      .vimrc quik open
"  -----------------------------
    "ev for edit vimrc
    nnoremap <leader>ev :split $MYVIMRC<cr><C-w>T
    "sv for source vimrc
    nnoremap <leader>sv :source $MYVIMRC<cr>
"  -----------------------------
"
"      remaps
"  -----------------------------
    nnoremap <space> za
"  -----------------------------
"
"         python testes
"  -----------------------------
    nnoremap <leader>p :py3file
"  -----------------------------
