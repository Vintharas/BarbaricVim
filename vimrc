set nocompatible                  " Must come first because it changes other options.

" run pathogen package manager
execute pathogen#infect()

syntax enable                     " enable syntax highlighting
filetype plugin indent on         " Turn on file type detection.

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
colorscheme distinguished

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
