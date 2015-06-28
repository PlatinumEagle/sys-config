" ======================================================================
" Plugins, using *** Vundle ***
" ----------------------------------------------------------------------
set nocompatible		" be iMproved, required
filetype off			" required
" set the runtime path to include Vundle and initlaize
set rtp+=~/.vim/bundle/Vundle.vim/

"
" The following are example of different formats supported.
" plugin on GitHub
"	Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"	Plugin 'L9'
" plugin from git repository other than GitHub
"	Plugin 'git://git.wincent.com/command=t.git'
" plugin from git repo on local machine (when working on your own plugin)
"	Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"	Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict iwth L9
"	Plugin 'user/L9', {'name': 'newL9'}

" Keep Plugin commands between vundle#begin and vundle#end
call vundle#begin()
"call vundle$begin('~/some/path/here') " to specify path to keep plugins
" ***********************************
" ********** BEGIN Plugins **********
" ***********************************

Plugin 'gmarik/Vundle.vim'        " Plugin repository manager
Plugin 'tpope/vim-sensible'       " unobjectionable default vim settings
Plugin 'tpope/vim-surround'       " add/edit/delete parens, xml tags, etc
Plugin 'tpope/vim-repeat'         " repeat functionality for plugin actions
Plugin 'tpope/vim-fugitive'       " Git wrapper for vim
Plugin 'tpope/vim-git'            " syntax highlighting for git
Plugin 'airblade/vim-gitgutter'   " shows git diff in the left 'gutter'
Plugin 'Valloric/YouCompleteMe'   " code completion with fuzzy search
"Plugin 'Shougo/neocomplete.vim'
Plugin 'SirVer/ultisnips'         " snippet manager
Plugin 'honza/vim-snippets'       " snippets for snippet manager
Plugin 'mattn/emmet-vim'          " shorthand for HTML, CSS, XML creation
Plugin 'scrooloose/nerdtree'      " improved file explorer
Plugin 'bling/vim-airline'        " improved status/tabline
Plugin 'edkolev/tmuxline.vim'     " tmux statusline generator (w/ airline)

" --- Colors ---
Plugin 'xolox/vim-misc'                 " Required for colorscheme switcher
Plugin 'xolox/vim-colorscheme-switcher' " Switch using F8 & Shift-F8
Plugin 'flazz/vim-colorschemes'	        " Gazillions of color schemes!
"Plugin 'jpo/vim-railscasts-theme'
"Plugin 'altercation/vim-colors-solarized'

" ***********************************
" *********** END Plugins ***********
" ***********************************
call vundle#end()		" required
" All of your Plugins must be added before the preceding line
filetype plugin indent on 	" required
" ======================================================================
"
"-- Plugins to consider --
"EasyMotion -- jump directly to any word on the screen
"tComment -- toggle comments
"Emmet or Sparkup -- quickly create HTML structures via shorthand
"Multiple Cursor -- like 'multiple cursors' in Sublime Text
"CommandT, CtrlP, FuzzyFinder -- fuzzy file searching
"	CommandT = written in Ruby, fast
"	CtrlP = more features, slower, written in VimScript
"	FuzzyFinder = ?
"AutoComplPop -- automatically showing popups as you type
"Syntastic -- syntax checker
"?PeepOpen -- file explorer application (for vim & others)
"
" ======================================================================
" UltiSnips configuration
" ----------------------------------------------------------------------
" Trigger configuration.
" Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" ======================================================================

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
"set clipboard=unnamed

" Allow backspace in insert mode
set backspace=indent,eol,start

" Add additional way to exit insert mode on home row
inoremap jj <ESC>
inoremap kj <ESC>

" Change leader key
let mapleader = ","

" Size of a hard TABstop (/t)
set tabstop=8

" A combination of spaces and tabs are used to simulate tabstops
" at a width other than the (hard) tabstop
set softtabstop=0

" Always uses spaces instead of tab characters
set expandtab

" Size of an 'indent'
set shiftwidth=4

" Make <TAB> key insert indents instead of tabs at the beginning of a line
set smarttab

" Enable line numbers
set number

" Enable syntax highlighting
syntax on

" Always show the status line
set laststatus=2

" Show the cursor position
set ruler

" Don't show the intro message when starting Vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Show the (partial) command as it's being typed
set showcmd

" Use relative line numbers
"if exists("&relativenumber")
"	set relativenumber
"	au BufReadPost * set relativenumber
"endif

" Start scrolling three lines before the horizontal window border
set scrolloff=3



"====[ Set colorscheme ]=============================================
set t_Co=256

" -- Solarized --
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
"set background=light
"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif
"colorscheme solarized

" -- Other --
"colorscheme railscasts
"colorscheme lilypink
colorscheme hybrid


"====[ Set up smarter search behavior ]==============================
set incsearch    "Lookahead as search pattern is specified
set ignorecase   "Ignore case in all searches...
set smartcase    "...unless uppercase letters used

set hlsearch     "Highlight all matches
highlight clear Search
highlight       Search  ctermfg=White

" Delete in normal mode to switch off highlights until next search and clear msgs
"Nmap <silent> <BS> [Cancel highlighting] :call HLNextOff() <BAR> :nohlsearch <BAR> :call VG_Show_CursorColumn('off')<CR>


"====[ Whitespace management ]=======================================
" Double-delete to remove trailing whitespace...
nmap <silent> <BS><BS> [Remove trailing whitespace] mz:call TrimTrailingWS()<CR>'z

function! TrimTrailingWS ()
    if search('\s\+$', 'cnw')
        :%s/\s\+$//g
    endif
endfunction



