Plugins = {
  -- Essentials
  ["wbthomason/packer.nvim"]      = {},
  ["nvim-tree/nvim-web-devicons"] = {},
  ["neovim/nvim-lspconfig"]       = {},
  ["windwp/nvim-ts-autotag"]      = {},

  -- Colorschemes
  ["cpea2506/one_monokai.nvim"]   = {},
  ["navarasu/onedark.nvim"]       = {},
  ["EdenEast/nightfox.nvim"]      = {},
  ["marko-cerovac/material.nvim"] = {},
  ["rebelot/kanagawa.nvim"]       = {},
  ["folke/tokyonight.nvim"]       = {},
  ["glepnir/zephyr-nvim"]         = {},
  ["mhartington/oceanic-next"]    = {},
  ["shaunsingh/nord.nvim"]        = {},
	["Mofiqul/dracula.nvim"]				= {},

  -- DAP
  ["mfussenegger/nvim-dap"] = {},
  ["mfussenegger/nvim-dap-python"] = {},
  ["mxsdev/nvim-dap-vscode-js"] = {},
  ["theHamsta/nvim-dap-virtual-text"] = {
    config = function()
      require('nvim-dap-virtual-text').setup()
    end
  },
  ["rcarriga/nvim-dap-ui"] = {
    event = "VimEnter",
    config = function()
      require("dapui").setup()
    end,
  },

  -- Text navigation <f>
  ["phaazon/hop.nvim"] = {
    config = function()
      require("hop").setup()
    end
  },


 -- List functions/variables in a function <Leader + o>
  ["simrat39/symbols-outline.nvim"] = {
    config = function()
      require("symbols-outline").setup()
    end
  },

  -- Telescope
  ["nvim-telescope/telescope-dap.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension("dap")
    end,
  },

  -- Github Copilot AI completion
  ["zbirenbaum/copilot.lua"] = {
    event = "VimEnter",
    config = function()
      require('pluginList.config.copilot')
    end,
  },

  -- Statusline
  ["nvim-lualine/lualine.nvim"]   = {
    config = function ()
      require('pluginList.config.lualine')
    end
  },

  -- Syntax highlighting
  ["nvim-treesitter/nvim-treesitter"] = {
    wants = "nvim-ts-autotag",
    config = function()
      require('nvim-ts-autotag').setup()
      require('pluginList.config.treesitter')
    end,
  },

  -- A package manager for Debuggers, LSPs, etc..
  ["williamboman/mason.nvim"] = {
    config = function ()
      require('mason').setup()
    end
  },
  ["williamboman/mason-lspconfig.nvim"] = {
    after = "mason.nvim",
    config = function ()
      require('pluginList.config.masonlsp')
    end
  },

  -- Auto-completion engines
  ["hrsh7th/nvim-cmp"] = {
    after = "friendly-snippets",
    config = function()
      require('pluginList.config.cmp')
    end,
  },
  ["rafamadriz/friendly-snippets"] = {
    module = { "cmp", "cmp_nvim_lsp" },
  },
  ["L3MON4D3/LuaSnip"] = {
    wants = "friendly-snippets",
    after = "nvim-cmp",
    event = "VimEnter",
    config = function()
      require('pluginList.config.luasnip')
    end,
  },

  -- Plugins to facilitate auto-completion
  ["saadparwaiz1/cmp_luasnip"] = { after = "LuaSnip" },
  ["hrsh7th/cmp-nvim-lua"]     = { after = "cmp_luasnip" },
  ["hrsh7th/cmp-nvim-lsp"]     = { after = "cmp-nvim-lua" },
  ["hrsh7th/cmp-buffer"]       = { after = "cmp-nvim-lsp" },
  ["hrsh7th/cmp-path"]         = { after = "cmp-buffer" },

  -- File browser <Leader - t>
  ["kyazdani42/nvim-tree.lua"] = {
    config = function()
      require('nvim-tree').setup()
    end,
  },

  -- Locate files in a workspace <Leader - f>
  ["nvim-telescope/telescope.nvim"] = {
    requires = {
      { "nvim-lua/popup.nvim" },
      { "nvim-lua/plenary.nvim" },
    },
    config = function()
      require('telescope').setup()
    end,
  },

  -- Comment out lines <gcc>
  ["numToStr/Comment.nvim"] = {
    config = function()
      require('Comment').setup()
    end,
  },

  -- Auto-close an unclosed parenthesis/bracket
  ["windwp/nvim-autopairs"] = {
    config = function()
      require('nvim-autopairs').setup()
    end,
  },

  -- Color any hex color values (#FFFF00)
  ["norcalli/nvim-colorizer.lua"] = {
    config = function()
      require('colorizer').setup()
    end,
  },

  -- Provide emmet support for HTML
  ["aca/emmet-ls"] = {
    config = function()
      require('pluginList.config.emmetLs')
    end,
  },

  -- Git
  ["lewis6991/gitsigns.nvim"] = {
    config = function()
      require('gitsigns').setup()
    end,
  },

	-- Harpoon
	["ThePrimeagen/harpoon"] = {
    wants = "telescope.nvim",
		config = function()
			require('telescope').load_extension('harpoon')
			require('harpoon').setup({})
		end
	},

	-- Obsidian
	["epwalsh/obsidian.nvim"] = {
		config = function()
			require("obsidian").setup({
				dir = "~/Notes"
			})
		end
	}
}
