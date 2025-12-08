-- Mapeos para moverte entre ventanas (splits) en Modo Normal (n)
vim.keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Moverse a la ventana izquierda" })
vim.keymap.set("n", "<C-Down>", "<C-w>j", { desc = "Moverse a la ventana inferior" })
vim.keymap.set("n", "<C-Up>", "<C-w>k", { desc = "Moverse a la ventana superior" })
vim.keymap.set("n", "<C-Right>", "<C-w>l", { desc = "Moverse a la ventana derecha" })

-- Mapeos para redimensionar ventanas usando Alt + flechas (A es Alt)
vim.keymap.set("n", "<A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Disminuir ancho" })
vim.keymap.set("n", "<A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Aumentar ancho" })
vim.keymap.set("n", "<A-Up>", "<cmd>resize +2<cr>", { desc = "Aumentar alto" })
vim.keymap.set("n", "<A-Down>", "<cmd>resize -2<cr>", { desc = "Disminuir alto" })

-- Pegar sin reemplazado
vim.keymap.set({ "v", "x" }, "p", [["_dP]], { desc = "Pegar sin copiar el texto reemplazado" })
