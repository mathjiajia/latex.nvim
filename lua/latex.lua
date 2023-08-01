local L = {}

L.imaps = require("latex.module.imaps")
L.conceals = require("latex.module.conceals")
L.surrounds = require("latex.module.surrounds")

L.__index = L

L._defaults = {
	conceals = {
		enabled = {
			"greek",
			"math",
			"script",
			"delim",
			"font",
		},
		add = {},
	},
	imaps = {
		enabled = true,
		add = {},
		default_leader = ";",
	},
	surrounds = {
		enabled = true,
		command = "c",
		environment = "e",
		math = "$",
		quotation = '"',
	},
	texlab = {
		build = "<M-b>",
		forward = "<M-f>",
		cancel_build = "<M-x>",
		close_env = "]]",
		toggle_star = "tse",
	},
}

function L.setup(args)
	args = vim.tbl_deep_extend("force", L._defaults, args == nil and {} or args)
	vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
		pattern = { "*.tex" },
		callback = function()
			L.conceals.init(args.conceals)
			L.imaps.init(args.imaps, "tex")
			L.surrounds.init(args.surrounds)
		end,
	})
	vim.api.nvim_create_autocmd({ "LspAttach" }, {
		pattern = { "*.tex" },
		callback = function()
			L.texlab.init(args.texlab)
		end,
	})
	vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
		pattern = { "*.md" },
		callback = function()
			L.conceals.init(args.conceals)
			L.imaps.init(args.imaps, "markdown")
			L.surrounds.init(args.surrounds)
		end,
	})
	vim.api.nvim_create_autocmd({ "BufLeave", "BufWinLeave" }, {
		pattern = { "*.tex", "*.md" },
		callback = L._deinit,
	})
end

function L._deinit() end

return L
