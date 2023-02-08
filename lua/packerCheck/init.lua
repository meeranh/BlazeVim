local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

-- Installing Packer if not already available
if fn.empty(fn.glob(install_path)) > 0 then
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a" })
  print "Cloning packer .."
  fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }

  -- Install all plugins
  vim.cmd [[packadd packer.nvim]]
  require('pluginList')
  vim.cmd "PackerSync"
end
