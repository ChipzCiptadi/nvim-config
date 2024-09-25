return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		window = {
			position = "left",
            width = 40,
		},
		filesystem = {
			follow_current_file = {
				enabled = true,
				leave_dirs_open = true,
			},
		},
	},
	config = function()
		vim.cmd([[nnoremap \ :Neotree toggle<cr>]])
	end,
}
