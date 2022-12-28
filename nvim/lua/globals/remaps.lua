options = { noremap = true }

-- Change panes on vim ctrl mappings
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', options)
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', options)
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', options)
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', options)

-- splits
vim.api.nvim_set_keymap('n', '<leader>vs', ':vsplit <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>hs', ':hsplit <CR>', { noremap = true })

-- tab
vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnew <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tl', ':tabnext <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>th', ':tabprevious <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tq', ':tabclose <CR>', { noremap = true })

-- Escape maps to a rolling jk
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', options)

-- nvim-tree
vim.api.nvim_set_keymap('n', '<leader>ne', ':NvimTreeToggle <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>nf', ':NvimTreeFindFile <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>nr', ':NvimTreeRefresh <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ni', ':NvimTreeResize +5 <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>nd', ':NvimTreeResize -5 <CR>', { noremap = true })

-- telescope
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = '[F]ind [H]elp' })
vim.keymap.set('n', '<leader>fw', require('telescope.builtin').grep_string, { desc = '[F]ind current [W]ord' })
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = '[F]ind by [G]rep' })
vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics, { desc = '[F]ind [D]iagnostics' })
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = '[F]ind [B]uffers' })

