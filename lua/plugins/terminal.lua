return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 20,
			direction = "horizontal",
			open_mapping = [[<c-`>]],
		})
	end,
}
