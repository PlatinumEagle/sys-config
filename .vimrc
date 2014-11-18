"-- MUST have plugins --
"Pathogen -- plugin/extension loader
"Sensible -- unobjectionable default vim settings 
"Ultisnips or SnipMate -- snippet manager and expander (using tab)
"Surround -- add/edit/delete surrounding parens, brackets, quotes, xml tags
"Repeat -- adds repeat functionality for plugin actions
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

inoremap jj <ESC>
let mapleader = ","

" Pathogen configuration
" after installing new plugins, run :Helptags to update help
execute pathogen#infect()
syntax on
filetype plugin indent on

