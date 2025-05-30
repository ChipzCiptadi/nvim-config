return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		init = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		end,
		opts = {
			defaults = {
				layout_strategy = "horizontal",
				layout_config = {
					width = 0.8,
					preview_width = 0.66,
				},
			},
		},
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		opts = {
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
		},
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},
}
