require("trevor.core")
require("trevor.lazy")
vim.keymap.set("n", "<leader>rf", function()
	local file = vim.fn.expand("%")
	vim.cmd("split | terminal bash -c 'python3 " .. file .. " && echo; echo Press ENTER to exit; read'")
end, { desc = "Run current Python file and pause" })
vim.opt.conceallevel = 2
vim.opt.concealcursor = "nc"
vim.o.scrolloff = 10
vim.o.sidescrolloff = 6
