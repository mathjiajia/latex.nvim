local api, lsp = vim.api, vim.lsp

local M = {}

local close_env = function()
	local win = api.nvim_get_current_win()
	local bufnr = api.nvim_get_current_buf()
	local client = lsp.get_clients({ bufnr = bufnr, name = "texlab" })[1]
	if not client then
		return vim.notify("Texlab client not found", vim.log.levels.ERROR)
	end

	client:request("workspace/executeCommand", {
		command = "texlab.findEnvironments",
		arguments = { lsp.util.make_position_params(win, client.offset_encoding) },
	}, function(err, result)
		if err then
			return vim.notify(err.code .. ": " .. err.message, vim.log.levels.ERROR)
		end
		if #result == 0 then
			return vim.notify("No environment found", vim.log.levels.WARN)
		end

		local text = result[#result].name.text
		api.nvim_put({ "\\end{" .. text .. "}" }, "", false, true)
	end, bufnr)
end

local toggle_star = function()
	local win = api.nvim_get_current_win()
	local bufnr = api.nvim_get_current_buf()
	local client = lsp.get_clients({ bufnr = bufnr, name = "texlab" })[1]
	if not client then
		return vim.notify("Texlab client not found", vim.log.levels.ERROR)
	end

	client:request("workspace/executeCommand", {
		command = "texlab.findEnvironments",
		arguments = { lsp.util.make_position_params(win, client.offset_encoding) },
	}, function(err, result)
		if err then
			return vim.notify(err.code .. ": " .. err.message, vim.log.levels.ERROR)
		end
		if #result == 0 then
			return vim.notify("No environment found", vim.log.levels.WARN)
		end

		local text = result[#result].name.text
		local new = text:sub(-1) == "*" and text:sub(1, -2) or text .. "*"
		local pos = vim.api.nvim_win_get_cursor(0)
		vim.lsp.buf.execute_command({
			command = "texlab.changeEnvironment",
			arguments = {
				{
					textDocument = { uri = vim.uri_from_bufnr(bufnr) },
					position = { line = pos[1] - 1, character = pos[2] },
					newName = new,
				},
			},
		})
	end, bufnr)
end

function M.init(config)
	if not config.enabled then
		return
	end

	-- stylua: ignore start
	vim.keymap.set("n", config.build, vim.cmd.TexlabBuild, { buffer = true, desc = "Build the current buffer" })
	vim.keymap.set("n", config.forward, vim.cmd.TexlabForward, { buffer = true, desc = "Forward search from current position" })
	vim.keymap.set("n", config.cancel_build, vim.cmd.TexlabCancelBuild, { buffer = true, desc = "Cancel the current build" })
	vim.keymap.set("n", config.change_env, vim.cmd.TexlabChangeEnvironment, { buffer = true, desc = "Change the current environment" })
	vim.keymap.set("i", config.close_env, close_env, { buffer = true, desc = "Close the current environment" })
	vim.keymap.set("n", config.toggle_star, toggle_star, { buffer = true, desc = "Toggle starred environment" })
	-- stylua: ignore end
end

return M
