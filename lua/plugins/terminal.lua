return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 20,
			direction = "float",
            open_mapping = [[<c-`>]],
		})
	end,
}
