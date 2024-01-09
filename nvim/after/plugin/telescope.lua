local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fk", builtin.keymaps, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

local telescope = require("telescope")

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-j>"] = "move_selection_next",
                ["<C-k>"] = "move_selection_previous",
            },
        },
    },
    pickers = {
        find_files = {
            theme = "dropdown",
            previewer = true,
            hidden = true,
        },
        live_grep = {
            theme = "dropdown",
            previewer = true,
        },
        buffers = {
            theme = "dropdown",
            previewer = true,
        },
    },
})

-- local Plugin = {'indent-blankline.nvim'}
--
-- Plugin.name = 'indent_blankline'
--
-- Plugin.main = 'ibl'
--
-- Plugin.event = {'BufReadPost', 'BufNewFile'}
--
-- -- See :help ibl.setup()
-- Plugin.opts = {
--   enabled = true,
--   scope = {
--     enabled = false,
--   },
--   indent = {
--     char = '▏',
--   },
-- }
--
