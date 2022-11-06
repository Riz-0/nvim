-- Consult :h or :h ${OPTION_NAME} to know what these do

local options = {
  -- Appearance Options --
  termguicolors = true,                 -- Enable more colours
  number = true,                        -- Enable line numbers
  numberwidth = 1,                      -- Minimum number width
  signcolumn = "number",                -- Display signs in the number column
  cmdheight = 1,                        -- Set cmd prompt height
  pumheight = 10,                       -- Number of items to show in the cmd pop-up menu
  wrap = false,                         -- Display long lines off the screen
  showmode = false,                     -- Hide mode text in the cmd line

	-- Indentation Options --
	tabstop = 2,                          -- Number of spaces per tab
	shiftwidth = 2,                       -- Number of spaces per indentation level
	expandtab = true,                     -- ronvert tabs to spaces

  -- Cursor Options --
  whichwrap = "hl",                     -- Go to next/previous line when holding h/l instead of stopping
  scrolloff = 8,                        -- Start vertical scroll 8 lines before the top/bottom
  sidescrolloff = 8,                    -- Start horizontal scroll 8 characters before the sides
  mouse = "a",                          -- Enable mouse mode

  -- Split Options --
  splitbelow = true,                    -- Open horizontal splits on the bottom
  splitright = true,                   -- Open vertical splits on the right

  -- File options --
  fileencoding = "utf-8",               -- Set file encoding
  writebackup = false,                  -- Don't make a backup file before overwriting backup = false,                       -- Don't keep backup files after overwriting
  undofile = false,                     -- Disable persistent undo
  swapfile = false,                     -- Disable swapfiles
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd [[colorscheme onedark]]

vim.opt.iskeyword:append("-")           -- Treat words with "-" as 1 word
vim.opt.clipboard:append("unnamedplus") -- Use system clipboard
