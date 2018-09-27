"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""//,x^,"""""""""""""""""""""""""""""""""""""""""""""""""""//,x^,"""""""""
""""""//*`"//""""""""""""""""""""""""""""""""""""""""""""""""""//*`"//"""""""""
"""""//"""//==================================================//"""//""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Mobile vim configuration awesome supreme """""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vundle setup """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
"Plugin for commenting
Plugin 'scrooloose/nerdcommenter'

" added nerdtree
Plugin 'scrooloose/nerdtree'

" Solarized color
Plugin 'altercation/vim-colors-solarized'
" Dracula color
Plugin 'dracula/vim'
" Vim Dark theme, inspired by atom
Plugin 'gosukiwi/vim-atom-dark'

" Syntax highlighting, generic
"Plugin 'scrooloose/syntastic'

" Python Junk
"Plugin 'nvie/vim-flake8'
"let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }
"Plugin 'vim-scripts/indentpython.vim'

" C++ syntax highlighting
Plugin 'octol/vim-cpp-enhanced-highlight'

" 
Plugin 'majutsushi/tagbar'

" Scala syntax highlighting
Plugin 'derekwyatt/vim-scala'

" Minimap (doesn't work too well)
Plugin 'severin-lemaignan/vim-minimap'
" Plugin 'koron/minimap-vim'

" Rust syntax highlighting
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'

" csound
Plugin 'luisjure/csound-vim'

" I don't know...
Plugin 'moll/vim-bbye'
Plugin 'godlygeek/csapprox'

" Snipps
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" YouComplete
" Note, on some systems YCM does not build. This can be solved by decreasing
" the number of cores assigned to the build or create additional swap space
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Doxxx
Plugin 'vim-scripts/DoxygenToolkit.vim'
let g:DoxygenToolkit_briefTag_funcName="yes"
"let g:DoxygenToolkit_briefTag_pre="qk$a q73a-qj$"
let g:DoxygenToolkit_briefTag_pre="qk$aqj$"
" let g:DoxygenToolkit_blockHeader='----------------------------------------------------------------------------'

" ALE
Plugin 'w0rp/ale'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" End plugin definitions """""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" End Vundle Configuration""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""
" Setting some decent VIM settings for programming
"
set ai                          " set auto-indenting on for programming
set showmatch                   " automatically show matching brackets. works like it does in bbedit.
set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
set ruler                       " show the cursor position all the time
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way it should
set nocompatible                " vi compatible is LAME
set background=dark             " Use colours that work well on a dark background (Console is usually black)
set showmode                    " show the current mode
set clipboard=unnamed           " set clipboard to unnamed to access the system clipboard under windows
syntax on                       " turn syntax highlighting on by default


"""""""""""""""""""""""""""""""""
" Remap q to switch to normal mode 
vnoremap q <Esc>
inoremap q <Esc>
" Press z twice to enter a q
inoremap zz q
vnoremap zz q


"""""""""""""""""""""""""""""""""
" Should move this into file specific settings
inoremap {<CR> {<CR>}<Esc>ko
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
nmap <F9> :set ft=asm68k <CR>
nnoremap <F4> :let b:syntastic_python_python_exec ='python3.6'

let g:ale_linters = { 'python': ['flake8', 'mypy']}
" color column
set colorcolumn=80
" Highlight things over 80 char
match ErrorMsg /\%>79v.\+/

let g:cpp_class_decl_highlight=1
let g:cpp_member_variable_highlight=1
let python_highlight_all=1


"""""""""""""""""""""""""""""""""
"" Line Numbering
au InsertEnter * set number
au InsertLeave * set relativenumber

" Make line numbering absolute
nmap <F8> :set norelativenumber <CR>


"""""""""""""""""""""""""""""""""
" ColorSchemeSchtuff
" Syntax color enable
syntax enable

" Set correct color theme, of course dark themed
set background=dark

" Depending on the operating system, switch the color theme. Linux can
" support atom-dark, while Windows cannot. atom-dark is my fav~
if &term=~'linux'
  colorscheme peachpuff
else
  colorscheme atom-dark
endif

" Press \p to switch to atom-dark
map <Leader>p :colorscheme atom-dark<CR>


"""""""""""""""""""""""""""""""""
" Commonly needed hotkeys
" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
" Turn 4-indent into 2-indent
nnoremap <F6> :%s;^\(\s\+\);\=repeat(' ', len(submatch(0))/2);g
" show functions and variables present in file
" Need to checkout why this is calling Flake8 in python files
nmap <F7> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""
" Show EOL type and last modified timestamp, right after the filename
set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})%=%l,%c%V\ %P

"------------------------------------------------------------------------------
" Only do this part when compiled with support for autocommands.
if has("autocmd")
    "Set UTF-8 as the default encoding for commit messages
    autocmd BufReadPre COMMIT_EDITMSG,MERGE_MSG,git-rebase-todo setlocal fileencodings=utf-8

    "Remember the positions in files with some git-specific exceptions"
    autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$")
      \           && expand("%") !~ "COMMIT_EDITMSG"
      \           && expand("%") !~ "MERGE_EDITMSG"
      \           && expand("%") !~ "ADD_EDIT.patch"
      \           && expand("%") !~ "addp-hunk-edit.diff"
      \           && expand("%") !~ "git-rebase-todo" |
      \   exe "normal g`\"" |
      \ endif

      autocmd BufNewFile,BufRead *.patch set filetype=diff
      autocmd BufNewFile,BufRead *.diff set filetype=diff

      autocmd Syntax diff
      \ highlight WhiteSpaceEOL ctermbg=red |
      \ match WhiteSpaceEOL /\(^+.*\)\@<=\s\+$/

      autocmd Syntax gitcommit setlocal textwidth=74
endif " has("autocmd")

