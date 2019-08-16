":se backup? backupdir? backupext?
"http://vim.wikia.com/wiki/Remove_swap_and_backup_files_from_your_working_directory
" vim's vimrc_example and msvim already sets up backup and swap
" set swap(.swp),backup(~),undo(.udf) directory to vim installation
" Please make sure the directory exists otherwise current directory will be used
" Remember the undo history for file, doesn't work with file collisions
"Taken from http://vim.wikia.com/wiki/Example_vimrc
set directory=c:\tmp
set backupdir=c:\tmp
set undodir=c:\tmp
set nocompatible
set hidden
set wildmenu
set ignorecase "use case insesitive search, except when using capital letters
set smartcase
set autoindent "If there is no flietype-specific indenting, imitate above line
set laststatus=2 "Always display status line
set confirm "Instead failing because file is not save, ask if you want to save first
set visualbell "Visual alert instead of sound
"set t_vb= "To remove visual alert
"set mouse=a "Enable mouse for all modes
set expandtab
set softtabstop=4 "disabled tabstop=4
set cmdheight=2 "set command windows to 2 lines
"Open fullscreen
au GUIEnter * simalt ~x
"Set syntax automatically each time gml file has opened
autocmd BufNewFile,BufRead *.gml set syntax=gml

filetype indent plugin on
syntax on
"pathogen
"call pathogen#infect()
colorscheme tone 
set background=dark
"game maker syntax
"set syntax=gml.vim
"set filetype=gml
set ruler
set hlsearch
set autoindent
set smartindent
set number
set shiftwidth=4
"set tabstop=4
:set guitablabel=%N/\ %t\ %M
"windows toolbar
if has("gui_running")
	set guioptions-=m
	set guioptions-=T
	set guioptions-=r
	set guioptions-=L
	"256 color
	set t_Co=256
endif
"prevents cursor from sliding back when pressing esc in insert mode(It's not working as i want)
"inoremap <silent> <Esc> <Esc>`^
cd/
cd Users\Manko\Documents\GameMakerStudio2\Kingdom Lost 
"e Users\Manko\Documents\GameMakerStudio2\2\scripts\scr_movement\scr_movement.gml
"vs Users\Manko\Documents\GameMakerStudio2\2\scripts\scr_mcCtrl\scr_mcCtrl.gml
"cd Users\Manko\Documents\GameMakerStudio2\2\scripts
"macro button
nnoremap <Space> @
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <S-H> gT
nnoremap <S-L> gt
"comment open/comment close java
map <C-o> i/*<ESC>
map <C-c> a*/<ESC>
"Game maker show debug message
map <C-z> oshow_debug_message(" " + string());<ESC>2F"p<ESC>f(pF"i=<SPACE><ESC>kdd
"Pressing ,ss will toggle and untoggle spell checking
map <C-s> :setlocal spell!<cr>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <F5> :w<ENTER>:!1.py<ENTER>
nmap <F2> :tabdo windo set syntax=gml<CR>
nmap <F3> :let t:mytablabel = ''<Left>
"nohl
map mm :nohl<ENTER>
"processing
"filetype plugin on
"let g:use_processing_java=1
"let processing_doc_path="processing-2.0.3"
"search
set incsearch
set foldmethod=manual
set showcmd
autocmd FileType text setlocal textwidth = 112
"Set custom tab name
"Usage: :let t:mytablabel = 'my_tab_name'
function! GuiTabLabel()
  return exists('t:mytablabel') ? t:mytablabel : ''
endfunction
set guitablabel=%{GuiTabLabel()}
set go+=e
set guifont=Consolas:h9
unmap <C-X>
