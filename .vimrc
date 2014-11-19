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

Plugin 'tpope/vim-sensible'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

"--- Other plugins ---
"NERDtree -- improved file explorer
Plugin 'scrooloose/nerdtree'

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
"Vundle -- automatically updates plugins from GitHub
"CommandT, CtrlP, FuzzyFinder -- fuzzy file searching
"	CommandT = written in Ruby, fast
"	CtrlP = more features, slower, written in VimScript
"	FuzzyFinder = ?
"SuperTab -- auto-completion with <Tab>
"AutoComplPop -- automatically shoing popups as you type
"
"- http://blog.kewah.com/2014/from-sublime-text-to-vim/ -
"Syntastic -- syntax checker
"Emmet or Sparkup -- quickly create HTML structures via shorthand
"CTRL-P -- fuzzy finder
"Multiple Cursor -- like 'multiple cursors' in Sublime Text
"
"- http://code.tutsplus.com/series/vim-essential-plugins--net-19224 -
"EasyMotion -- jump directly to any word on the screen
"Surround -- add/update/delete wrapping characters/tags
"tComment -- toggle comments
"NERDtree -- improved file explorer
"?PeepOpen -- file explorer application (for vim & others)
"

" ======================================================================
" Pathogen configuration
" ----------------------------------------------------------------------
"Pathogen -- plugin/extension loader (github: tpope/vim-pathogen)
" **********************************************************************
" ***** after installing new plugins, run :Helptags to update help *****
" **********************************************************************
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



inoremap jj <ESC>
let mapleader = ","
syntax on

"====[ Set up smarter search behavior ]==============================
set incsearch    "Lookahead as search pattern is specified
set ignorecase   "Ignore case in all searches...
set smartcase    "...unless uppercase letters used

set hlsearch     "Highlight all matches
highlight clear Search
highlight       Search  ctermfg=White

" Delete in normal mode to switch off highlights until next search and clear msgs
"Nmap <silent> <BS> [Cancel highlighting] :call HLNextOff() <BAR> :nohlsearch <BAR> :call VG_Show_CursorColumn('off')<CR>

" Double-delete to remove trailing whitespace...
"Nmap <silent> <BS><BS> [Remove trailing whitespace] mz:call TrimTrailingWS()<CR>'z

function! TrimTrailingWS ()
    if search('\s\+$', 'cnw')
        :%s/\s\+$//g
    endif
endfunction



