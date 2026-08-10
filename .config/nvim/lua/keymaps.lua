-- Keybinds

vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

vim.keymap.set('v', '<C-c>', '"+y', { silent = true })

vim.keymap.set({ 'n', 'v' }, '<C-v>', '"+p', { silent = true })
vim.keymap.set('i', '<C-v>', '<C-r>+', { silent = true })

vim.keymap.set({ 'n', 'v' }, '<S-s>', '<Cmd>enew<CR>', { desc = 'Новая вкладка' })
vim.keymap.set('n', '<S-D>', '<Cmd>BufferLineCycleNext<CR>', { desc = 'Следующая вкладка' })
vim.keymap.set('n', '<S-A>', '<Cmd>BufferLineCyclePrev<CR>', { desc = 'Предыдущая вкладка' })

vim.keymap.set({ 'n', 'v' }, '<C-s>', '<Cmd>w!<CR>', { desc = 'Сохранить файл' })
vim.keymap.set({ 'n', 'v' }, '<C-ы>', '<Cmd>w!<CR>', { desc = 'Сохранить файл' })

vim.keymap.set({ 'n', 'i', 'v' }, '<C-q>', '<Cmd>q!<CR>', { desc = 'Выйти' })
vim.keymap.set({ 'n', 'i', 'v' }, '<C-й>', '<Cmd>q!<CR>', { desc = 'Выйти' })
vim.keymap.set({ 'n', 'i', 'v' }, '<C-S-q>', '<Cmd>:bd<CR>', { desc = 'Закрыть вкладку' })
vim.keymap.set({ 'n', 'i', 'v' }, '<C-S-й>', '<Cmd>:bd<CR>', { desc = 'Закрыть вкладку' })

vim.keymap.set({ 'n', 'i', 'v' }, '<C-z>', '<Cmd>undo<CR>', { desc = 'Отменить действие' })
vim.keymap.set({ 'n', 'i', 'v' }, '<C-я>', '<Cmd>undo<CR>', { desc = 'Отменить действие' })

vim.keymap.set({ 'n', 'i', 'v' }, '<C-y>', '<Cmd>redo<CR>', { desc = 'Повторить действие' })
vim.keymap.set({ 'n', 'i', 'v' }, '<C-н>', '<Cmd>redo<CR>', { desc = 'Повторить действие' })

vim.keymap.set({ 'n', 'v' }, '<C-f>', '/', { desc = 'Поиск' })
vim.keymap.set({ 'n', 'v' }, '<C-а>', '/', { desc = 'Поиск' })
vim.keymap.set('i', '<C-f>', '<C-o>/', { desc = 'Поиск из режима ввода' })
vim.keymap.set('i', '<C-а>', '<C-o>/', { desc = 'Поиск из режима ввода' })

vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Выйти в Normal режим' })
vim.keymap.set('n', 'v', 'v', { desc = 'Выйти в Visual режим' })
vim.keymap.set('n', 'w', 'i', { desc = 'Выйти в Insert', silent = true })

vim.keymap.set('n', '<A-f>', '<Cmd>Neotree focus<CR>', { desc = 'Фокус на проводник' })
vim.keymap.set('n', '<A-а>', '<Cmd>Neotree focus<CR>', { desc = 'Фокус на проводник' })

vim.keymap.set('n', '<A-e>', '<Cmd>Neotree toggle left<CR>', { desc = 'Открыть проводник' })
vim.keymap.set('n', '<A-у>', '<Cmd>Neotree toggle left<CR>', { desc = 'Открыть проводник' })
