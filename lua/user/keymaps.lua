local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap macro command
keymap("n", "<S-m>", "q", opts)
-- Remap space as leader key
keymap("", "q", "<Nop>", opts)
vim.g.mapleader = "q"
vim.g.maplocalleader = "q"

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<leader>h", ":wincmd h<cr>", opts)
keymap("n", "<leader>j", ":wincmd j<cr>", opts)
keymap("n", "<leader>k", ":wincmd k<cr>", opts)
keymap("n", "<leader>l", ":wincmd l<cr>", opts)

keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<C-j>", ":bnext<CR>", opts)
keymap("n", "<C-k>", ":bprevious<CR>", opts)

-- Split screen
keymap("n","s","<Nop>",opts)
keymap("n","<leader>s",":split<CR>", opts)
keymap("n","<leader>v",":vsplit<CR>", opts)

-- Telescope
keymap("n","<leader>T",":Telescope<CR>", opts)

-- Auto-setup
keymap("n","<leader>t",":vsplit term://zsh | :split term://zsh | :wincmd k | :resize +10 | wincmd h<cr>", opts)

keymap("n","go","<C-o>",opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "qq", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("n", "<S-j>", ":m .+1<CR>==", opts)
keymap("n", "<S-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "<S-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<S-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "qq", "<C-\\><C-n>", opts)
keymap("t", "qh", "<C-\\><C-n><C-w>h", term_opts)
keymap("t", "qj", "<C-\\><C-n><C-w>j", term_opts)
keymap("t", "qk", "<C-\\><C-n><C-w>k", term_opts)
keymap("t", "ql", "<C-\\><C-n><C-w>l", term_opts)

