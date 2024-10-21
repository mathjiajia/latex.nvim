local L = {}

L.imaps = require("latex.module.imaps")
L.conceals = require("latex.module.conceals")
L.surrounds = require("latex.module.surrounds")
L.texlab = require("latex.module.texlab")

L.__index = L

L._defaults = {
	conceals = {
		enabled = {
			"amssymb",
			"core",
			"delim",
			"font",
			"greek",
			"math",
			-- "mleftright",
			"script",
		},
		add = {},
	},
	imaps = {
		enabled = false,
		add = {},
		default_leader = ";",
	},
	surrounds = {
		enabled = true,
		command = "c",
		math = "$",
		quotation = '"',
	},
	texlab = {
		enabled = true,
		build = "<leader>ll",
		forward = "<leader>lf",
		cancel_build = "<leader>lc",
		close_env = "]]",
		change_env = "cse",
		toggle_star = "tse",
	},
}

function L.setup()
	local conf = vim.g.latex_conf or {}
	conf = vim.tbl_deep_extend("force", L._defaults, conf)
	vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
		pattern = { "*.tex" },
		callback = function()
			L.conceals.init(conf.conceals)
			L.imaps.init(conf.imaps, "tex")
			L.surrounds.init(conf.surrounds)
			L.texlab.init(conf.texlab)
		end,
	})
	vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
		pattern = { "*.md" },
		callback = function()
			L.conceals.init(conf.conceals)
			L.imaps.init(conf.imaps, "markdown")
			L.surrounds.init(conf.surrounds)
		end,
	})
	vim.api.nvim_create_autocmd({ "BufLeave", "BufWinLeave" }, {
		pattern = { "*.tex", "*.md" },
		callback = L._deinit,
	})
end

function L._deinit() end

return L
