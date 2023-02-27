if exists('g:vscode')
    " VSCode extension
else
    " ordinary Neovim
endif

call plug#begin()
'
Plug 'sainnhe/gruvbox-material'
'
Plug 'nvim-lualine/lualine.nvim'
'
Plug 'kyazdani42/nvim-web-devicons'
'
call plug#end()

lua << END
require('lualine').setup {
options = { theme = 'gruvbox_dark' }
}
END
if has('termguicolors')
	set termguicolors
endif
set background=dark
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_transparent_background = 1
colorscheme gruvbox-material
