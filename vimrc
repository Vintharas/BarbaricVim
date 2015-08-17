set nocompatible              " Must come first because it changes other options. (Vi improved)
filetype off                  " required for Vundle

" **************************** Vundle Startup ******************************
" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" **************************************************************************

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Install other plugins
Plugin 'airblade/vim-rooter' " Changes Vim working directory to project root
Plugin 'Lokaltog/vim-distinguished' " A dark vim color scheme for 256-color terminals.
Plugin 'kien/ctrlp.vim' " Fuzzy file, buffer, mru, tag, etc finder
Plugin 'tomasr/molokai' " Molokai theme for vim 
Plugin 'msanders/snipmate.vim' " TextMate snippets feature in vim
Plugin 'plasticboy/vim-markdown' " Markdown in vim
Plugin 'scrooloose/nerdtree'  " A tree explorer plugin in vim
Plugin 'tpope/vim-repeat' " Enable repeating supported plugin maps with .
Plugin 'tpope/vim-unimpaired' " pairs of handy bracket mappings
Plugin 'tpope/vim-ragtag' " ghetto HTML/XML mappings
Plugin 'tpope/vim-fugitive' " a Git wrapper so awesome, it should be illegal
" Plugin 'rip-rip/clang_complete' " Vim plugin that use clang for completing C/C++ code.
" Plugin 'eraserhd/vim-ios' " ios plugin for vim
Plugin 'vim-scripts/taglist.vim' " source code browser
Plugin 'vim-scripts/tComment' " An extensible & universal comment plugin 
Plugin 'tpope/vim-surround' " quoting/parenthesizing made simple
Plugin 'sjl/vitality.vim' " vim plays nicely with iTerm and tmux
Plugin 'wincent/Command-T' " fast file navigation for vim

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ********************* Normal settings *************************

syntax enable                     " enable syntax highlighting

runtime macros/matchit.vim        " Load the matchit plugin. (it extends the matching capabilities of the % operator

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show absolute line numbers (cf. relativenumber).
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set display+=lastline             " Display as much as possible of a window's last line.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

" Global tabs/spaces settings
set tabstop=4                     " Global tab width
set shiftwidth=4                  " 
set expandtab                     " Use spaces instead of tabs

set laststatus=2                  " Always show a status line.
" Useful information in the status bar
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P


set nobackup                      " No backups.
set nowritebackup                 " No backups.
set noswapfile                    " No swap files; more hassle than they're worth.

set autoread                      " Automatically re-read files changed outside Vim.

set clipboard=unnamed             " Use OS clipboard by default.

set nofoldenable                  " disable folding

" Colorschemes
set background=dark               " Dark background.
colorscheme molokai
let g:molokai_original = 1
set guifont=Inconsolata:h16       " Decent font.

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" Make sure that movements work as expected in wrapped lines
function! ScreenMovement(movement)
    if &wrap
        return "g" . a:movement
    else
        return a:movement
    endif
endfunction

onoremap <silent> <expr> j ScreenMovement("j")
onoremap <silent> <expr> k ScreenMovement("k")
onoremap <silent> <expr> 0 ScreenMovement("0")
onoremap <silent> <expr> ^ ScreenMovement("^")
onoremap <silent> <expr> $ ScreenMovement("$")
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap <silent> <expr> ^ ScreenMovement("^")
nnoremap <silent> <expr> $ ScreenMovement("$")

