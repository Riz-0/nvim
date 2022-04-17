return require("packer").startup(function()
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- Apperance Plugins --
  use "Mofiqul/dracula.nvim"            -- Colorscheme
  use "onsails/lspkind-nvim"            -- Icons in nvim-cmp
  use "kyazdani42/nvim-web-devicons"    -- Icons for nvim-tree
  use "nvim-lualine/lualine.nvim"       -- Better status line

  -- Completion Plugins --
  use "hrsh7th/nvim-cmp"                -- Base completion plugin
  use "hrsh7th/cmp-buffer"              -- Buffer completions
  use "hrsh7th/cmp-path"                -- File path completion

  -- Snippet Plugins --
  use "L3MON4D3/LuaSnip"                -- Snippet engine
  use "rafamadriz/friendly-snippets"    -- Snippet collection
  use "saadparwaiz1/cmp_luasnip"        -- Snippet completion

  -- LSP Plugins --
  use "neovim/nvim-lspconfig"           -- Base LSP plugin
  use "williamboman/nvim-lsp-installer" -- LSP Installer
  use "hrsh7th/cmp-nvim-lsp"            -- LSP Completion

  -- Syntax Highlighting --
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  -- Others --
  use "kyazdani42/nvim-tree.lua"        -- A file explorer
  use "romgrk/barbar.nvim"              -- Show buffers in tab line
  use "windwp/nvim-autopairs"           -- Automatically complete pairs of brackets
  use "numToStr/Comment.nvim"           -- Comment large chunks of code easily
end)
