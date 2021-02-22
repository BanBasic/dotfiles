"######################################
"### plugins
"######################################
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

   Plugin 'VundleVim/Vundle.vim'

   "File tree
   "Plugin 'junegunn/goyo.vim'

   "A light statusline/tabline 
   Plugin 'itchyny/lightline.vim'

   """" LATEX """"
   "latex syntax highlighting
   Plugin 'lervag/vimtex'

   "latex live preview
   Plugin 'xuhdev/vim-latex-live-preview'

   """" Markdown """"
   "Plugin 'vim-pandoc/vim-pandoc-syntax'
   Plugin 'godlygeek/tabular'
   Plugin 'plasticboy/vim-markdown'
   Plugin 'JamshedVesuna/vim-markdown-preview'

call vundle#end()

"######################################
"### plugins setting 
"###################################### 
"nmap <silent> <F3> :NERDTreeToggle <CR> 
 
"Pandoc vim-latex-live
"let g:vimtex_view_method = 'zathura' 
"let g:livepreview_previewer = 'mupdf' 
let g:livepreview_previewer = 'zathura' 
" Be sure to use the correct path to vimtex here

" markdown
"let vim_markdown_preview_github=1
let vim_markdown_preview_browser='chromium'
"let vim_markdown_preview_pandoc=1


"removes whitespace highlighing from plasticboy
"syn clear mkdLineBreak
"au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
"autocmd BufNewFile,BufFilePre,BufRead *.md :syn clear mkdLineBreak
"autocmd BufNewFile *.md :syn clear mkdLineBreak
"######################################
"### configurations
"######################################

"inoremap jk <Esc>`^"
"The first line maps escape to the caps lock key when you enter Vim," 
"and the second line returns normal functionality to caps lock when you quit."
"au VimEnter * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"au VimLeave * :silent !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

noremap Zz <c-w>_ \| <c-w>\|
noremap Zo <c-w>=

"fixes the dark font problem with tmux"
"set background=dark
"if font is bold from setting above setting
"set t_Co=256

"set number
"set relativenumber

" to prevent lag when switch modes
set ttimeoutlen=50

"toggle past mode
set pastetoggle=<F2>

"Convert tabs to 4 spaces"
set tabstop=2 shiftwidth=2 expandtab

syntax on

" Ruler to suggest max line length
"highlight ColorColumn ctermbg=gray
"set colorcolumn=72


" For clever completion with the :find command
set path+=**

" Always use bash syntax for sh filetype
let g:is_bash=1

" Color scheme
"color desertink

"   Range:   233 (darkest) ~ 238 (lightest)
"   Default: 235
"let g:space_vim_dark_background = 233
"color space-vim-dark
"set termguicolors


let g:gruvbox_contrast_dark = '(hard)'
set bg=dark
let g:gruvbox_termcolors=16
color gruvbox

" Splits
set splitright

" auto indents
set autoindent


"######################################
"### theme and statusline
"######################################

" for status
set laststatus=2
set noshowmode
"let g:lightline = {'colorscheme': 'jellybeans',} 
"let g:lightline = {'colorscheme': 'simpleblack',}
"let g:lightline = {'colorscheme': 'deus',} 
"let g:lightline = {'colorscheme': 'seoul256',} 
let g:lightline = {'colorscheme': 'one',}  " for space_vim_dark



