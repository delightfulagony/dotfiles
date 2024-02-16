-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/agony/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/agony/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/agony/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/agony/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/agony/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ale = {
    loaded = true,
    path = "/home/agony/.local/share/nvim/site/pack/packer/start/ale",
    url = "https://github.com/dense-analysis/ale"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/agony/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/agony/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/agony/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/agony/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["deoplete.nvim"] = {
    config = { "" },
    loaded = true,
    path = "/home/agony/.local/share/nvim/site/pack/packer/start/deoplete.nvim",
    url = "https://github.com/Shougo/deoplete.nvim"
  },
  ["emmet-vim"] = {
    config = { "" },
    loaded = true,
    path = "/home/agony/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["go.nvim"] = {
    loaded = true,
    path = "/home/agony/.local/share/nvim/site/pack/packer/start/go.nvim",
    url = "https://github.com/ray-x/go.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/agony/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0+\2\0\0005\3\3\0B\0\3\1K\0\1\0\1\0\t\vhsl_fn\2\vrgb_fn\2\rRRGGBBAA\2\nnames\1\vRRGGBB\2\bRGB\2\tmode\15background\vcss_fn\1\bcss\1\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/agony/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/agony/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["orca.vim"] = {
    loaded = true,
    path = "/home/agony/.local/share/nvim/site/pack/packer/start/orca.vim",
    url = "https://github.com/grimme-lab/orca.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/agony/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["rust.vim"] = {
    config = { "" },
    loaded = true,
    path = "/home/agony/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["seiheki-nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\3\0\a\1\0166\0\0\0009\0\1\0'\2\2\0B\0\2\2\t\0\0\0X\0\5�6\0\3\0009\0\4\0'\2\5\0B\0\2\1X\0\4�6\0\3\0009\0\4\0'\2\6\0B\0\2\1K\0\1\0\24colorscheme seiheki\29colorscheme seiheki-dark\bcmd\bvim\29[ $(consoletype) == vt ]\fexecute\aos\0\0" },
    loaded = true,
    path = "/home/agony/.local/share/nvim/site/pack/packer/start/seiheki-nvim",
    url = "https://github.com/delightfulagony/seiheki-nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: seiheki-nvim
time([[Config for seiheki-nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\3\0\a\1\0166\0\0\0009\0\1\0'\2\2\0B\0\2\2\t\0\0\0X\0\5�6\0\3\0009\0\4\0'\2\5\0B\0\2\1X\0\4�6\0\3\0009\0\4\0'\2\6\0B\0\2\1K\0\1\0\24colorscheme seiheki\29colorscheme seiheki-dark\bcmd\bvim\29[ $(consoletype) == vt ]\fexecute\aos\0\0", "config", "seiheki-nvim")
time([[Config for seiheki-nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0+\2\0\0005\3\3\0B\0\3\1K\0\1\0\1\0\t\vhsl_fn\2\vrgb_fn\2\rRRGGBBAA\2\nnames\1\vRRGGBB\2\bRGB\2\tmode\15background\vcss_fn\1\bcss\1\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: deoplete.nvim
time([[Config for deoplete.nvim]], true)

time([[Config for deoplete.nvim]], false)
-- Config for: rust.vim
time([[Config for rust.vim]], true)

time([[Config for rust.vim]], false)
-- Config for: emmet-vim
time([[Config for emmet-vim]], true)

time([[Config for emmet-vim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end