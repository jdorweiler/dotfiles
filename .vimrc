set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
"  Add more plugins here !!!!
Plugin 'scrooloose/nerdtree'
Plugin 'chrisbra/SudoEdit.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tyru/current-func-info.vim'
Plugin 'tpope/vim-fugitive'

"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

set shiftwidth=4
set tabstop=4
set expandtab
set modeline
set autoindent
set showcmd
set ruler
set backspace=indent,eol,start
set nowrap

set spell spelllang=en_us
set nospell

filetype indent on
filetype plugin on
map \p i(<Esc>ea)<Esc>
map \[ i[<Esc>ea]<Esc>
map \" i"<Esc>ea"<Esc>
map \' i'<Esc>ea'<Esc>
map \{ i{<Esc>ea}<Esc>
map \m <Esc>:%! tr '\r' '\n'<Return>
nnoremap <C-g>f :echo cfi#format("%s", "")<CR>
set number

let b:nroff_is_groff = 1

let g:do_xhtml_mappings = 'true'
let g:html_tag_case = 'lowercase'
let g:no_html_tab_mapping = 1
let g:no_html_toolbar = 'yes'


if has ("gui_running")
	set background=dark
	" 
	" set transparency=2
    set guifont=Monaco:h10
    set guioptions-=T
    colorscheme russell
    set t_Co=256
else
	set background=dark
    set t_Co=256
    colorscheme twilight256
endif

augroup md
    autocmd BufRead *.mkd set ai formatoptions=tcroqn2 comments=n:&gt;
augroup END

" ShowFuncs
let g:showfuncctagsbin = "/usr/local/bin/ctags"

let g:ConqueTerm_Color = 1


let mapleader = ","

syntax on

if has("autocmd")
      " When editing a file, always jump to the last cursor position
      autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal g'\"" |
        \ endif
  endif
