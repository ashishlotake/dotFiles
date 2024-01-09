vim.g.mapleader = " "

local opts = { noremap = true, silent = true }


-- move selected line up and down like vs code
vim.keymap.set("v","J",":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v","K",":m '<-2<CR>gv=gv", opts)

-- send the selection to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- get out from insert mode 
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "kk", "<Esc>")

vim.keymap.set("n","HH", ":set hlsearch!<CR>")

-- half page jumping and center the cursor 
vim.keymap.set("n","<C-d>", "<C-d>zz")
vim.keymap.set("n","<C-u>", "<C-u>zz")

-- this will make sure my search term are in the middle
vim.keymap.set("n","n", "nzzzv")
vim.keymap.set("n","N", "Nzzzv")

-- use yy and the p, it will do diff shit
-- so use <leaerd>p
vim.keymap.set("x","<leader>p", "\"_dp")

-- quickfix list navigation 
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- -- here lnext is same as cnext but location is used instead
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- this will edit the search and replace the word i am on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- this will make the bash script executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- nvim tree 
vim.keymap.set("n", "<leader>pv", ":Ex<CR>", opts )
-- vim.keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", opts )

-- Pane navigations
vim.keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
vim.keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
vim.keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
vim.keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

-- Window Management
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
vim.keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- indenting
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- comments
vim.keymap.set("n", '<C-c>', "gcc")
-- vim.keymap.set("v", "<C-_>", "gcc")


-- Buffer Navigation
-- vim.keymap.set("n", "<C-N>", ":bnext<CR>") -- Next buffer
-- vim.keymap.set("n", "<C-P>", ":bprevious<CR>") -- Prev buffer
-- vim.keymap.set("n", "<C-`>", ":e #<CR>") -- Switch to Other Buffer
