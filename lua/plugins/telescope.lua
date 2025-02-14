return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			local search_nvim_dir = function()
				builtin.find_files({ cwd = "~/.config/nvim" })
			end
			vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>ss", builtin.grep_string, {})
			vim.keymap.set("n", "<leader>sb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, {})
			vim.keymap.set("n", "<leader><leader>", builtin.current_buffer_fuzzy_find, {})
			vim.keymap.set("n", "<leader>n", search_nvim_dir, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				completion = { completeopt = "menu,menuone,preview,noselect" },

				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),

						-- pseudo code / specification for writing custom displays, like the one
						-- for "codeactions"
						-- specific_opts = {
						--   [kind] = {
						--     make_indexed = function(items) -> indexed_items, width,
						--     make_displayer = function(widths) -> displayer
						--     make_display = function(displayer) -> function(e)
						--     make_ordinal = function(e) -> string
						--   },
						--   -- for example to disable the custom builtin "codeactions" display
						--      do the following
						--   codeactions = false,
						-- }
					},
				},
			})
			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end,
	},

	-- This is your opts table
}
