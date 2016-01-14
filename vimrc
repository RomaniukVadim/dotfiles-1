" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim74/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

set encoding=utf8
set mouse=a
set number
set tabstop=4 softtabstop=4 shiftwidth=4
syntax on
set background=dark


filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  Plugin 'gmarik/Vundle.vim'    "Plugins manager
  Plugin 'Raimondi/delimitMate' "Better delimeters
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-commentary'
  Plugin 'bling/vim-airline'    "Airline
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'scrooloose/syntastic'

call vundle#end()

filetype plugin on
filetype plugin indent on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"let g:airline_theme=''

let g:airline_symbols   = {}
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline_section_warning = ''

function! AirlineInit()
  let g:airline_section_a = airline#section#create(['mode'])
  let g:airline_section_b = airline#section#create(['  '])
  let g:airline_section_c = airline#section#create(['%M'])

  let g:airline_section_x = airline#section#create(['filetype'])
  let g:airline_section_y = airline#section#create(['ffenc'])
  let g:airline_section_z = airline#section#create(['%l/%L'])
endfunction

:au User AirlineAfterInit call AirlineInit()

:au BufNewFile,BufRead *Pkgfile set ft=sh
:au BufNewFile,BufRead *.h,*.m set ft=objc


