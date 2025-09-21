return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			"         _nnnn_                      ",
			'        dGGGGMMb     ,"""""""""""""".',
			"       @p~qp~~qMb    | Hello Trevor |",
			"       M|@||@) M|   _;..............'",
			"       @,----.JM| -'                 ",
			"      JS^\\__/  qKL                  ",
			"     dZP        qKRb                 ",
			"    dZP          qKKb                ",
			"   fZP            SMMb               ",
			"   HZM            MMMM               ",
			"   FqM            MMMM               ",
			' __| ".        |\\dS"qML             ',
			" |    `.       | `' \\Zq             ",
			"_)      \\.___.,|     .'             ",
			"\\____   )MMMMMM|   .'               ",
			"     `-'       `--' hjm              ",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button(
				"SPC mv",
				"  > Open Obsidian Vault",
				"<cmd>cd ~/Documents/My\\ Vault | NvimTreeOpen<CR>"
			),
			dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
