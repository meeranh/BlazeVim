-- Loading all plugins
require("pluginList.list")

-- Installing Packer if not already available
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a" })
  print "Cloning packer .."
  fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }
end

-- Initializing Packer and loading all plugins
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)

	-- Loop through all the plugins
	for plugName, plugOptions in pairs(Plugins) do

		-- A temporary table to store the plugin name and it's options
		local optionTable = {}

		-- Setting the first value of the table to the plugin's name
		optionTable[1] = plugName

		-- Setting the options of the given plugin
		for optionName, optionValue in pairs(plugOptions) do
			optionTable[optionName] = optionValue
		end

		-- Packer loading the plugin with the given options
		use(optionTable)
	end
end)
