return {
	"ms-jpq/coq_nvim",
	branch = "coq",
	dependencies = {
		{ "ms-jpq/coq.artifacts", branch = "artifacts" },
		{ "ms-jpq/coq.thirdparty", branch = "3p" },
	},
	init = function()
		vim.g.coq_settings = {
			auto_start = true, -- if you want to start COQ at startup
			xdg = true, -- XDG Support
			-- Your COQ settings here
		}
	end,
	config = function()
		-- Your LSP settings here
	end,
}
