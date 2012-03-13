colorscheme torte

set nocompatible

set noallowrevins 	" allowrevins - Allows CTRL-_ in Insert and Command-line mode.
set autoindent 		" autoindent - I write code, so yes I want this!
set autowrite 		" autowrite - Automatically save modifications to files when 
					" external commands are used.
"set ruler 			" ruler - Shows cursor position.
set noshowmode 		" showmode - Show current mode.

" set nocompatible 	" compatible - Let Vim behave like Vi, hell no!
set textwidth=0 	" textwidth - Number of characters in a row.
					" (set to 0 to disable automatic line wrap.)

set shiftwidth=2 	" shiftwidth - Number of spaces to use for each 
					" insertion of (auto)indent.

set cmdheight=2 	" cmdheight - Number of screen lines to use for the command-line.
set backspace=2 	" backspace - '2' allows backspacing over indentation, 
					" end-of-line and start-of-line.

set nobackup 		" backup - Create a backup file (a file with a ~ on it).
set laststatus=2 	" laststatus - '2' shows the status line always.
set shell=/bin/sh 	" shell - ...
set complete=.,b,u,t " complete - Specifies how keyword completion works when 
					" CTRL-P or CTRL-N are used.
"set confirm 		" confirm - Brings up a dialog to save changes to unsaved 
					" buffers on :q or :e.

set tabstop=2 		" tabstop - Number of spaces a tab in the file counts for.
set showmatch
"set shortmess=aostTW " shortmess - Kind of messages to show.
"set showbreak=> 	" showbreak - String to put at the start of lines that have 
					" been wrapped.
set showcmd 		" showcmd - Show current uncompleted command.
set noignorecase 	" ignorecase - Ignores the case in search patterns.
set smartcase 		" smartcase - Override the 'ignorecase' option if the 
					" search pattern contains upper case characters.

set esckeys 		" esckeys - Allows cursor keys within insert mode.
					" this allows use of meta in command mode.

"set startofline 	" startofline - Just to the first character with page commands.
					" set nostartofline " kit

set hlsearch        " highlight all matches for a search pattern
set expandtab  		" expandtab - Inserts spaces instead of the tab character.
set number 			" number - Precede each line with it's line number.
set nosplitbelow 	" splitbelow - Create new window under current one.
"set nottyfast 		" ttyfast - Set when connected locally.
set visualbell 		" visualbell - Use visual bell instead of beeping.
set t_vb= 			" t_vb - Terminal's visual bell - turned off to make Vim quieter.
set wildchar=<TAB> 	" wildchar - Character user for "expansion" on the command line.
set terse

set viminfo='20,\"50   " read/write a .viminfo file, don't store more than
            " 50 lines of registers

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.class


" Debian uses compressed helpfiles. We must inform vim that the main
" helpfiles is compressed. Other helpfiles are stated in the tags-file.
set helpfile=$VIMRUNTIME/doc/help.txt.gz


" other stuff
set noallowrevins


":iab if <ESC>:call IfExpansion()<CR>a

function! IfExpansion()
    iab if if
    let currentline = getline(line("."))
    let column = col(".")
    let quoteindex = stridx(currentline, '"')
    if quoteindex >= 0 && quoteindex < column
        normal aif
    else
        normal aif( ) 
        normal {
        normal o
        normal o}
        normal kkwa
    endif
    iab if <ESC>:call IfExpansion()<CR>a
endfunction  




"I kinda like M-/, and ^P is to close to ^[ = Esc
imap / 

"short cut for going to the top of the file, opposite of G
noremap g gg



" Set some key mappings
:nmap W :buffers<CR>
":nmap E :bd \| bn<CR>
":nmap E :bn  \| :bd<CR>
:nmap Y :bd<CR>
:nmap X :bn<CR>

" Fire up standard syntax highlighting.
syntax on
filetype on

" Use dark shell, so set background dark
set background=dark

" Set up colors
" so $HOME/.vim/darkblue.vim
"add my own commands for stuff

"au BufNewFile,BufRead *.nc so $HOME/.vim/nc.vim

"au BufNewFile,BufRead *.c so $HOME/.vim/nc.vim
" Specific command and color options for each type of file:

" LaTeX
" au BufNewFile,BufRead *.tex so $HOME/.vim/tex.vim

" Actionscript
au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript
au BufNewFile,BufRead *.as so ~/.vim/actionscript.vim
au BufNewFile,BufRead *.mxml so ~/.vim/mxml.vim
"au Bufread,BufNewFile *.as set filetype=actionscript
" 

" " Mutt/Slrn
" au BufNewFile,BufRead snd.*,.letter,.followup,.article,.article.[0-9]\+,pico.[0-9]\+,mutt*[0-9] so $HOME/.vim/mail.vim
" 
" " Java
" au BufNewFile,BufRead *.java so $HOME/.vim/java.vim
" 
" " Scheme
" au BufNewFile,BufRead *.scm so $HOME/.vim/scheme.vim
" 
" " C/C++
" au BufNewFile,BufRead *.cpp,*.h,*.H,*.C so $HOME/.vim/cpp.vim
" au BufNewFile,BufRead *.h so $HOME/.vim/header.vim
" 
" " Makefile
" au BufNewFile,BufRead Makefile so $HOME/.vim/make.vim
" au BufLeave Makefile so $HOME/.vim/make-exit.vim
" 
" " ML
" au BufNewFile,BufRead *.ml so $HOME/.vim/ml.vim
" 
" " MAL
" au BufNewFile,BufRead *.mal,*.sal so $HOME/.vim/spim.vim


" mapping for tabs
:nmap :nt :tabnew<CR>
":nmap <C-N> :tabnext<CR>
:nmap <C-P> :tabp<CR>

:nmap <silent> <c-n> :NERDTreeToggle<CR>
:set winfixwidth

