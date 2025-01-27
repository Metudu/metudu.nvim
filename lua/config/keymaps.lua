-- barbar.nvim
vim.keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>', { desc = 'Barbar.nvim go to previous tab' })
vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>', { desc = 'Barbar.nvim go to next tab' })
vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>' , { desc = 'Barbar.nvim close the buffer' })
-- end barbar.nvim

-- toggleterm.nvim
local toggleterm = require('toggleterm')
vim.keymap.set('n', '<leader>r', ':ToggleTerm<CR>', { desc = 'Toggleterm Open Terminal' })
-- end toggleterm.nvim

-- nvim-tree
local ntapi = require('nvim-tree.api')
vim.keymap.set('n', '<leader>t', ntapi.tree.toggle, { desc = 'NvimTreeOpen' })
-- end nvim-tree

-- telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })
-- end telescope

-- coq
vim.g.coq_settings = {
    keymap = {
        recommended = true,
        jump_to_mark = "",
    },
}
-- end coq

-- global settings
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Switch between windows (to left)' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Switch between windows (to right)' })
-- end global settings