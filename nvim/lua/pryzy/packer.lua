-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({ 'folke/tokyonight.nvim',
  	as = 'tokyonight',
	config = function()
		vim.cmd('colorscheme tokyonight')
	end
  })

  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }

  use 'mbbill/undotree'

  use 'tpope/vim-fugitive'

  use { 'alexghergh/nvim-tmux-navigation', config = function()

	  local nvim_tmux_nav = require('nvim-tmux-navigation')

	  nvim_tmux_nav.setup {
		  disable_when_zoomed = true -- defaults to false
	  }

	  vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
	  vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
	  vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
	  vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
	  vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
	  vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
  end
  }


  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
end)
