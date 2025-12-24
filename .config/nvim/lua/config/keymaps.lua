-- Mapeos para moverte entre ventanas (splits) en Modo Normal (n)
vim.keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Moverse a la ventana izquierda" })
vim.keymap.set("n", "<C-Down>", "<C-w>j", { desc = "Moverse a la ventana inferior" })
vim.keymap.set("n", "<C-Up>", "<C-w>k", { desc = "Moverse a la ventana superior" })
vim.keymap.set("n", "<C-Right>", "<C-w>l", { desc = "Moverse a la ventana derecha" })

vim.keymap.set("n", "<C-Left>", "<Cmd>TmuxNavigateLeft<CR>", { desc = "Moverse a la ventana izquierda" })
vim.keymap.set("n", "<C-Down>", "<Cmd>TmuxNavigateDown<CR>", { desc = "Moverse a la ventana inferior" })
vim.keymap.set("n", "<C-Up>", "<Cmd>TmuxNavigateUp<CR>", { desc = "Moverse a la ventana superior" })
vim.keymap.set("n", "<C-Right>", "<Cmd>TmuxNavigateRight<CR>", { desc = "Moverse a la ventana derecha" })

-- Mapeos para redimensionar ventanas usando Alt + flechas (A es Alt)
vim.keymap.set("n", "<A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Disminuir ancho" })
vim.keymap.set("n", "<A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Aumentar ancho" })
vim.keymap.set("n", "<A-Up>", "<cmd>resize +2<cr>", { desc = "Aumentar alto" })
vim.keymap.set("n", "<A-Down>", "<cmd>resize -2<cr>", { desc = "Disminuir alto" })

-- Mapeos para centar la pantalla al hacer scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "" })
vim.keymap.set("n", "n", "nzzzv", { desc = "" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "" })

-- Pegar sin reemplazado
-- vim.keymap.set("x", "p", '"_dP', { desc = "Pegar sin copiar el texto reemplazado" })
-- vim.keymap.set("x", "P", '"_dp', { desc = "Pegar sin copiar el texto reemplazado" })

-- Mapeos para moverse entre tabs usando p y n
vim.keymap.set("n", "<leader><tab>p", "<cmd>tabPrevious<cr>", { desc = "Previous Tab" })
vim.keymap.set("n", "<leader><tab>n", "<cmd>tabNext<cr>", { desc = "Next Tab" })
