return {
	"linux-cultist/venv-selector.nvim",
	branch = "main",
	dependencies = {
		"neovim/nvim-lspconfig",
		"nvim-telescope/telescope.nvim",
		"mfussenegger/nvim-dap-python",
	},
	opts = {
		anaconda_base_path = nil,
		anaconda_envs_path = nil,
		parents = { ".venv", "venv", "env" },
		name = { ".venv", "venv", "env" },
		poetry_path = "poetry",
		pipenv_path = "pipenv",
		pyenv_path = "pyenv",
		hatch_path = "hatch",
		enable_debug_output = false,
		auto_refresh = true,
		dap_enabled = true,
		fd_binary_name = "fd",
		notify_user_on_venv_activation = true,
		export_path = true,
	},
	keys = {
		{ "<leader>vs", "<cmd>VenvSelect<cr>", desc = "Select virtual environment" },
		{
			"<leader>vc",
			function()
				require("venv-selector").retrieve_cached_venv()
			end,
			desc = "Retrieve cached venv",
		},
	},
	event = "VeryLazy",
}
