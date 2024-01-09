
vim.cmd([[
set signcolumn number tgc cursorline
hi CursorLineNr guibg=#3C3836
]])


require('lualine').setup {
    options = {
        theme = "gruvbox",
        globalstatus = true,
        component_separators = { left = "|", right = "|" },
        section_separators = { left = "", right = "" },
    },
    sections = {
        -- lualine_a = { "mode" },
        -- lualine_x = { "encoding", "fileformat", "filetype" },
        -- lualine_y = { "progress" },
        -- lualine_z = { "location" },
       lualine_a = {
           {
               'filename',
               file_status = true,      -- Displays file status (readonly status, modified status)
               newfile_status = false,  -- Display new file status (new file means no write after created)
               path = 1,
               -- 0: Just the filename
               -- 1: Relative path
               -- 2: Absolute path
               -- 3: Absolute path, with tilde as the home directory
               -- 4: Filename and parent dir, with tilde as the home directory

               shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
               -- for other components. (terrible name, any suggestions?)
               symbols = {
                   modified = '[+]',      -- Text to show when the file is modified.
                   readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
                   unnamed = '[No Name]', -- Text to show for unnamed buffers.
                   newfile = '[New]',     -- Text to show for newly created file before first write
               }
           }
       },
       lualine_b = {},
       lualine_c = {}

    },
    winbar = {
        lualine_a = {},
        lualine_b = { "buffers" },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    },

}

-------------------
-------------------
---------------local config = function()
--	require("lualine").setup({
--		sections = {
--		},
--		tabline = {},
--	})
--}
---------------local config = function()
--	require("lualine").setup({
--		sections = {
--		},
--		tabline = {},
--	})
--}

-- make sure that this line is after the colorscheme as clorccheme overwrites this behavior
-- vim.api.nvim_set_hl(0, 'Comment', { italic=true })
