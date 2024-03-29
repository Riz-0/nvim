local ensure_packer = function()
  local fn = vim.fn local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup({function(use)
  use "wbthomason/packer.nvim"

  -- Appearance Plugins
  use "ful1e5/onedark.nvim" -- Colorscheme
  use "nvim-tree/nvim-web-devicons" -- Icons
  use "nvim-lualine/lualine.nvim"  -- Status line
  use "akinsho/bufferline.nvim" -- "Tabs"
  use "nvim-tree/nvim-tree.lua" -- File Explorer

  -- LSP Stuffs
  use "neovim/nvim-lspconfig" -- Base LSP Plugin
  use "hrsh7th/nvim-cmp"  -- Autocompletion
  use "williamboman/mason.nvim" -- LSP Installer
  use "williamboman/mason-lspconfig.nvim" -- Bridge for mason.nvim and lspconfig

  -- Sources for nvim-cmp
  use "hrsh7th/cmp-nvim-lsp"  -- LSP Source
  use "saadparwaiz1/cmp_luasnip"  -- Snippet Completion
  use "hrsh7th/cmp-buffer"  -- Buffer Completion
  use "hrsh7th/cmp-path"    -- Path Completion

  -- Snippet Plugins
  use "L3MON4D3/LuaSnip"  -- Snippet Engine
  use "rafamadriz/friendly-snippets"  -- Snippet Collection

  -- Syntax Highlighting
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function() require("nvim-treesitter.install").update({ with_sync = true }) end,
  }

  -- Commenting Plugin
  use {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end
  }

  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end,
  config = {
    display = {
      open_fn = function()
        return require("packer.util").float({ border = "rounded" })
      end
    }
  }
})
