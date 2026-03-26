return {
	{
	"mason-org/mason.nvim",
	config = true
	},

	{
	"mason-org/mason-lspconfig.nvim",
	config = function ()
		require("mason-lspconfig").setup{
			ensure_installed = { "pyright", "clangd", "kotlin_language_server" }
		}
	end,
	},
}
