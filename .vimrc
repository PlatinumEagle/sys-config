" ======================================================================
" Plugins, using *** Vundle *** 
" ----------------------------------------------------------------------
set nocompatible		" be iMproved, required
filetype off			" required

" set the runtime path to include Vundle and initlaize
set rtp+=~/.vim/bundle/Vundle.vim/

" Keep Plugin commands between vundle#beging and vundle#end
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle$begin('~/some/path/here')
"
"
" The following are example of different formats supported.
" plugin on GitHub
"	Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"	Plugin 'L9'
" plugin from git repository other than GitHub
"	Plugin 'git://git.wincent.com/command=t.git'
" plugin from git repo on local machine (i.e. when working on your own plugin
"	Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"	Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict iwth L9
"	Plugin 'user/L9', {'name': 'newL9'}

" ***********************************
" ********** BEGIN Plugins **********
" ***********************************
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"--- MUST have plugins ---
"Sensible -- unobjectionable default vim settings 
"YouCompleteMe -- code completion with fuzzy search
"Ultisnips or SnipMate -- snippet manager and expander (using tab)
"Honza's snippets
"Surround -- add/edit/delete surrounding parens, brackets, quotes, xml tags
"Repeat -- adds repeat functionality for plugin actions
"NERDtree -- improved file explorer
"Emmet -- shorthand for HTML, CSS and XML document creation
"
Plugin 'tpope/vim-sensible'
Plugin 'Valloric/YouCompleteMe'
""Plugin 'ervandew/supertab'
""Plugin 'Shougo/neocomplete.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/nerdtree'

Plugin 'xolox/vim-misc'                 " Required for colorscheme switcher
Plugin 'xolox/vim-colorscheme-switcher' " Switch using F8 & Shift-F8
Plugin 'flazz/vim-colorschemes'	        " Gazillions of color schemes!
"Plugin 'jpo/vim-railscasts-theme'
"Plugin 'altercation/vim-colors-solarized'


" ***********************************
" *********** END Plugins ***********
" ***********************************


" All of your Plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on 	" required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append '!' to refresh local cache
" :PluginSearch foo - searches for foo; append '!' to refresh local cache
" :PluginClean      - confirms removal of unused plugins; '!' to auto-confirm
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ======================================================================
"
"
"-- Plugins to consider --
"
"- http://bling.github.io/blog/2013/02/10/love-affair-with-vim/ -
"- http://blog.kewah.com/2014/from-sublime-text-to-vim/ -
"- http://code.tutsplus.com/series/vim-essential-plugins--net-19224 -
"
"EasyMotion -- jump directly to any word on the screen
"tComment -- toggle comments
"Emmet or Sparkup -- quickly create HTML structures via shorthand
"Multiple Cursor -- like 'multiple cursors' in Sublime Text
"CommandT, CtrlP, FuzzyFinder -- fuzzy file searching
"	CommandT = written in Ruby, fast
"	CtrlP = more features, slower, written in VimScript
"	FuzzyFinder = ?
"SuperTab -- auto-completion with <Tab>
"AutoComplPop -- automatically showing popups as you type
"Syntastic -- syntax checker
"?PeepOpen -- file explorer application (for vim & others)
"

" ======================================================================
" Pathogen configuration
" ----------------------------------------------------------------------
" ***** after installing new plugins, run :Helptags to update help *****
"execute pathogen#infect()
"syntax on
"filetype plugin indent on
" ======================================================================

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
"Nmap <silent> <BS><BS> [Remove trailing whitespace] mz:call TrimTrailingWS()<CR>'z

function! TrimTrailingWS ()
    if search('\s\+$', 'cnw')
        :%s/\s\+$//g
    endif
endfunction



