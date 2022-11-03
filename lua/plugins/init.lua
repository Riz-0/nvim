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

return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"
  
  -- Appearance Plugins
  use "RRethy/nvim-base16"

  -- LSP Stuffs
  use "neovim/nvim-lspconfig" -- Base LSP Plugin
  use "hrsh7th/nvim-cmp"  -- Autocompletion
  use "L3MON4D3/LuaSnip"  -- Snippets
  use "williamboman/mason.nvim" -- LSP Installer
  use "williamboman/mason-lspconfig.nvim" -- Bridge for mason.nvim and lspconfig

  -- Sources for nvim-cmp
  use "hrsh7th/cmp-nvim-lsp"  -- LSP Source
  use "saadparwaiz1/cmp_luasnip"  -- LuaSnip Source

  -- Syntax Highlighting
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function() require("nvim-treesitter.install").update({ with_sync = true }) end,
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
