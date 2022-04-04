call plug#begin() 

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'morhetz/gruvbox'
" File browser
Plug 'preservim/nerdtree'
" Arduino Syntax for NVIM
Plug 'sudar/vim-arduino-syntax'
" C/C++ better syntax highlighting
Plug 'octol/vim-cpp-enhanced-highlight'
" VSCode like minimap in vim
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
"Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}
"Plug 'sheerun/vim-polyglot'
" GDB debugging in vim
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
Plug 'nikvdp/neomux'
Plug 'justinmk/vim-syntax-extra'
Plug 'vim-jp/vim-cpp'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-pathogen'
Plug 'vim-syntastic/syntastic'
Plug 'vim-python/python-syntax'
Plug 'prabirshrestha/vim-lsp'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'prabirshrestha/asyncomplete.vim'
Plug 'akinsho/bufferline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'Shougo/deoplete.nvim'
Plug 'lighttiger2505/deoplete-vim-lsp'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ziglang/zig.vim'
Plug 'neomake/neomake'
Plug 'mhinz/vim-startify'
"Plug 'corpix/cello.vim'

"================| Themes |==================
Plug 'Dave-Elec/gruvbox'
Plug 'srcery-colors/srcery-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fxn/vim-monochrome'
Plug 'Lokaltog/vim-monotone'
Plug 'sainnhe/gruvbox-material'
Plug 'Dave-Elec/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'eddyekofo94/gruvbox-flat.nvim'
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'logico/typewriter-vim'
Plug 'sainnhe/everforest'
Plug 'rebelot/kanagawa.nvim'
Plug 'hzchirs/vim-material'
Plug 'sainnhe/sonokai'
Plug 'arzg/vim-colors-xcode'
Plug 'sainnhe/edge'
Plug 'mangeshrex/everblush.vim'
"============================================
call plug#end()


"=========================| Themes setup |============================
set termguicolors
"
"------| gruvbox |------
let g:gruvbox_transparent_bg=1
"let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_dark='soft'
"autocmd vimenter * colorscheme gruvbox

"------| srcery |------
"let g:srcery_bg_passthrough=1
"autocmd vimenter * colorscheme srcery
"
"------| ayu |------
let ayucolor="dark"
"colorscheme ayu
"
"------| wwdc17 |------
let g:wwdc17_transp_bg = 1
"colorscheme wwdc17
"
"------| onedark |------
"colorscheme onedark
"
"------| tokyonight |------
let g:tokyonight_style = 'night'
"let g:tokyonight_transparent_background = 1
"colorscheme tokyonight
"let g:tokyonight_transparent = 1 
"
"------| everforest |------
"set background=light
colorscheme everforest
let g:everforest_background = 'soft'
let g:everforest_enable_italic = 1
let g:everforest_disable_italic_comment = 1

"------| typewriter |------
"colorscheme typewriter-night
"
"------| gruvbox flat |------
let g:gruvbox_flat_style = "hard"
"let g:gruvbox_transparent = 1
"colorscheme gruvbox-flat
"
"------| kanagawa |------
"colorscheme kanagawa
"
"------| vim-material |------
"colorscheme vim-material
"
"------| sonokai |------
"let g:sonokai_style = 'shusia'
"colorscheme sonokai

"------| xcode-theme |------
"colorscheme xcodewwdc
"
"------| edge |------
"let g:edge_transparent_background = 1
"colorscheme edge
"
"------| everblush |------
"colorscheme everblush

"------| make background transparent |------
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
"
"------| airline themes |------
"let g:airline_theme = 'base16_gruvbox_dark_soft'
"let g:airline_theme = 'edge'
"let g:airline_theme = 'material'
"let g:airline_theme = 'sonokai'
let g:airline_theme = 'everforest'
"let g:airline_theme = 'typewriter'
"let g:airline_theme = 'gruvbox-flat'
"
"=====================================================================

set number
set expandtab
set shiftwidth=4
" tab width
set tabstop=4
set clipboard=unnamedplus
set noshowmode

let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[5 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise


"===============| Discord Setup |==================
let g:presence_enable_line_number = 1
let g:presence_auto_update = 1
let g:presence_neovim_image_text = "NeoVim"

" Show Line and Columns
set statusline+=%F\ %l:%c
set ruler
set relativenumber

" vim-minimap config
"let g:minimap_width = 20
"let g:minimap_auto_start = 1
"let g:minimap_auto_start_win_enter = 1
"let g:minimap_highlight_range = 1
"let g:minimap_highlight_search = 1
"let g:minimap_git_colors = 1
hi MinimapCurrentLine ctermfg=Green guifg=#50FA7B guibg=#32302f
let g:minimap_highlight = 'MinimapCurrentLine'


inoremap <S-Tab> <esc>la

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

vnoremap cc <cmd>NERDTree<cr>
nnoremap cc <cmd>NERDTree<cr>

vnoremap ff <cmd>Files<cr>
nnoremap ff <cmd>Files<cr>

nnoremap <C-n> :tabn<cr>
nnoremap <C-p> :tabp<cr>


let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlighting = 1
let g:cpp_class_decl_highlighting = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

let g:airline_powerline_fonts = 1

if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(
      \   lsp#utils#find_nearest_parent_file_directory(
      \     lsp#utils#get_buffer_path(), ['.ccls', 'compile_commands.json', '.git/']))},
      \ 'initialization_options': {
      \   'highlight': { 'lsRanges' : v:true },
      \   'cache': {'directory': stdpath('cache') . '/ccls' },
      \ },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
endif
lua << EOF
require('bufferline').setup {}
EOF

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
    additional_vim_regex_highlighting = false,
  },
}
EOF

" C/C++ Language server for vim-lsp
" Register ccls C++ lanuage server.
if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      \ 'initialization_options': {'cache': {'directory': expand('~/.cache/ccls') }},
      \ 'allowlist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
endif

"lua << EOF
"    require('kanagawa').setup({
"        undercurl = true,           -- enable undercurls
"        commentStyle = "italic",
"        functionStyle = "NONE",
"        keywordStyle = "italic",
"        statementStyle = "bold",
"        typeStyle = "NONE",
"        variablebuiltinStyle = "italic",
"        specialReturn = true,       -- special highlight for the return keyword
"        specialException = true,    -- special highlight for exception handling keywords 
"        transparent = true,        -- do not set background color
"        colors = {},
"        overrides = {},
"    })
"
"    vim.cmd("colorscheme kanagawa")
"EOF
