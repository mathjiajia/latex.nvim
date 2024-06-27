local api, lsp = vim.api, vim.lsp

local M = {}

local close_env = function()
	local bufnr = api.nvim_get_current_buf()
	local client = lsp.get_clients({ bufnr = bufnr, name = "texlab" })[1]
	local params = lsp.util.make_position_params()

	if client then
		client.request("workspace/executeCommand", {
			command = "texlab.findEnvironments",
			arguments = { params },
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
	else
		print("method workspace/executeCommand is not supported by any servers active on the current buffer")
	end
end

local toggle_star = function()
	local bufnr = api.nvim_get_current_buf()
	local client = lsp.get_clients({ bufnr = bufnr, name = "texlab" })[1]
	local params = lsp.util.make_position_params()

	if client then
		client.request("workspace/executeCommand", {
			command = "texlab.findEnvironments",
			arguments = { params },
		}, function(err, result)
			if err then
				return vim.notify(err.code .. ": " .. err.message, vim.log.levels.ERROR)
			end
			if #result == 0 then
				return vim.notify("No environment found", vim.log.levels.WARN)
			end

			local text = result[#result].name.text
			params.newNeme = text:sub(-1) == "*" and text:sub(1, -2) or text .. "*"
			vim.lsp.buf.execute_command({
				command = "texlab.changeEnvironment",
				arguments = { params },
			})
		end, bufnr)
	else
		print("method workspace/executeCommand is not supported by any servers active on the current buffer")
	end
end

local change_env = function()
	local bufnr = api.nvim_get_current_buf()
	local params = lsp.util.make_position_params()

	if not lsp.get_clients({ bufnr = bufnr, name = "texlab" })[1] then
		return vim.notify("Texlab client not found", vim.log.levels.ERROR)
	end

	local new_name = vim.fn.input("Enter the new environment name: ")
	if not new_name or new_name == "" then
		return vim.notify("No environment name provided", vim.log.levels.WARN)
	end

	params.newName = new_name
	vim.lsp.buf.execute_command({
		command = "texlab.changeEnvironment",
		arguments = { params },
	})
end

function M.init(config)
	if not config.enabled then
		return
	end

	-- stylua: ignore start
	vim.keymap.set("n", config.build, vim.cmd.TexlabBuild, { buffer = true, desc = "Build the current buffer" })
	vim.keymap.set("n", config.forward, vim.cmd.TexlabForward, { buffer = true, desc = "Forward search from current position" })
	vim.keymap.set("n", config.cancel_build, vim.cmd.TexlabCancelBuild, { buffer = true, desc = "Cancel the current build" })
	vim.keymap.set("n", config.change_env, change_env, { buffer = true, desc = "Change the current environment" })
	vim.keymap.set("i", config.close_env, close_env, { buffer = true, desc = "Close the current environment" })
	vim.keymap.set("n", config.toggle_star, toggle_star, { buffer = true, desc = "Toggle starred environment" })
	-- stylua: ignore end
end

return M
