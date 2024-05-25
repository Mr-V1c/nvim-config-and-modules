return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		vim.keymap.set("n", "<leader>t", ":Neotree filesystem toggle<CR>")

		require("neo-tree").setup({
			filesystem={
				filtered_items = {
					visible=true,
					hide_hidden=true,
			}},
		})
	end,
}
