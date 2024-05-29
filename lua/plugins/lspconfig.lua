return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {

		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", {})
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
		vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", {})
		vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", {})
		vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", {})
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
		vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", {})
		vim.keymap.set("n", "<leader>d",vim.diagnostic.open_float, {})
		vim.keymap.set("n", "[d",vim.diagnostic.goto_prev, {})
		vim.keymap.set("n", "]d",vim.diagnostic.goto_next, {})
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "<leader>rs", "<cmd>LspRestart<CR>", {})

		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")

		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})
		lspconfig["pyright"].setup({ capabilities = capabilities })
	end,
}
