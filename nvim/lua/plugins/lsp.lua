return {
	"williamboman/mason.nvim",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")
		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		mason_tool_installer.setup({
			ensure_installed = {
				"prettierd", -- prettierd formatter for general-purpose
				"stylua", -- lua formatter
				"luacheck", -- lua linter
				"eslint_d", -- JavaScript/TypeScript linter
				"htmlhint", -- HTML linter
				"clang-format", -- C/C++ Formatter
			},
		})
	end,
}
