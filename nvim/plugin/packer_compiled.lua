-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function("has", { "nvim-0.5" }) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command("packadd packer.nvim")

local no_errors, error_msg = pcall(function()
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
      sorted_times[#sorted_times + 1] = { chunk_name, time_taken }
    end
    table.sort(sorted_times, function(a, b)
      return a[2] > b[2]
    end)
    local results = {}
    for i, elem in ipairs(sorted_times) do
      if not threshold or threshold and elem[2] > threshold then
        results[i] = elem[1] .. " took " .. elem[2] .. "ms"
      end
    end

    _G._packer = _G._packer or {}
    _G._packer.profile_output = results
  end

  time([[Luarocks path setup]], true)
  local package_path_str =
    "/Users/yoshihotaru/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/yoshihotaru/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/yoshihotaru/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/yoshihotaru/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
  local install_cpath_pattern = "/Users/yoshihotaru/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
  if not string.find(package.path, package_path_str, 1, true) then
    package.path = package.path .. ";" .. package_path_str
  end

  if not string.find(package.cpath, install_cpath_pattern, 1, true) then
    package.cpath = package.cpath .. ";" .. install_cpath_pattern
  end

  time([[Luarocks path setup]], false)
  time([[try_loadstring definition]], true)
  local function try_loadstring(s, component, name)
    local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
    if not success then
      vim.schedule(function()
        vim.api.nvim_notify(
          "packer.nvim: Error running " .. component .. " for " .. name .. ": " .. result,
          vim.log.levels.ERROR,
          {}
        )
      end)
    end
    return result
  end

  time([[try_loadstring definition]], false)
  time([[Defining packer_plugins]], true)
  _G.packer_plugins = {
    ["Comment.nvim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/Comment.nvim",
      url = "https://github.com/numToStr/Comment.nvim",
    },
    LuaSnip = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/LuaSnip",
      url = "https://github.com/L3MON4D3/LuaSnip",
    },
    ReplaceWithRegister = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/ReplaceWithRegister",
      url = "https://github.com/vim-scripts/ReplaceWithRegister",
    },
    ["bufferline.nvim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
      url = "https://github.com/akinsho/bufferline.nvim",
    },
    ["cmp-buffer"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/cmp-buffer",
      url = "https://github.com/hrsh7th/cmp-buffer",
    },
    ["cmp-calc"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/cmp-calc",
      url = "https://github.com/hrsh7th/cmp-calc",
    },
    ["cmp-cmdline"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
      url = "https://github.com/hrsh7th/cmp-cmdline",
    },
    ["cmp-dictionary"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/cmp-dictionary",
      url = "https://github.com/uga-rosa/cmp-dictionary",
    },
    ["cmp-emoji"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/cmp-emoji",
      url = "https://github.com/hrsh7th/cmp-emoji",
    },
    ["cmp-nvim-lsp"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
      url = "https://github.com/hrsh7th/cmp-nvim-lsp",
    },
    ["cmp-nvim-lua"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
      url = "https://github.com/hrsh7th/cmp-nvim-lua",
    },
    ["cmp-path"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/cmp-path",
      url = "https://github.com/hrsh7th/cmp-path",
    },
    ["cmp-spell"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/cmp-spell",
      url = "https://github.com/f3fora/cmp-spell",
    },
    cmp_luasnip = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
      url = "https://github.com/saadparwaiz1/cmp_luasnip",
    },
    ["conflict-marker.vim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/conflict-marker.vim",
      url = "https://github.com/rhysd/conflict-marker.vim",
    },
    ["darkplus.nvim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/darkplus.nvim",
      url = "https://github.com/lunarvim/darkplus.nvim",
    },
    ["elly.vim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/elly.vim",
      url = "https://github.com/ulwlu/elly.vim",
    },
    ["friendly-snippets"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/friendly-snippets",
      url = "https://github.com/rafamadriz/friendly-snippets",
    },
    ["gitsigns.nvim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
      url = "https://github.com/lewis6991/gitsigns.nvim",
    },
    indentLine = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/indentLine",
      url = "https://github.com/Yggdroot/indentLine",
    },
    ["lualine.nvim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/lualine.nvim",
      url = "https://github.com/nvim-lualine/lualine.nvim",
    },
    neogit = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/neogit",
      url = "https://github.com/TimUntersberger/neogit",
    },
    ["nord-vim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/nord-vim",
      url = "https://github.com/arcticicestudio/nord-vim",
    },
    ["null-ls.nvim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
      url = "https://github.com/jose-elias-alvarez/null-ls.nvim",
    },
    ["nvim-autopairs"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
      url = "https://github.com/windwp/nvim-autopairs",
    },
    ["nvim-cmp"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/nvim-cmp",
      url = "https://github.com/hrsh7th/nvim-cmp",
    },
    ["nvim-colorizer.lua"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
      url = "https://github.com/norcalli/nvim-colorizer.lua",
    },
    ["nvim-lsp-installer"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
      url = "https://github.com/williamboman/nvim-lsp-installer",
    },
    ["nvim-lspconfig"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
      url = "https://github.com/neovim/nvim-lspconfig",
    },
    ["nvim-notify"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/nvim-notify",
      url = "https://github.com/rcarriga/nvim-notify",
    },
    ["nvim-tree.lua"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
      url = "https://github.com/kyazdani42/nvim-tree.lua",
    },
    ["nvim-treesitter"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
      url = "https://github.com/nvim-treesitter/nvim-treesitter",
    },
    ["nvim-ts-context-commentstring"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
      url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring",
    },
    ["nvim-web-devicons"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
      url = "https://github.com/kyazdani42/nvim-web-devicons",
    },
    ["onedark.vim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/onedark.vim",
      url = "https://github.com/joshdick/onedark.vim",
    },
    ["packer.nvim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/packer.nvim",
      url = "https://github.com/wbthomason/packer.nvim",
    },
    ["plenary.nvim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/plenary.nvim",
      url = "https://github.com/nvim-lua/plenary.nvim",
    },
    ["popup.nvim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/popup.nvim",
      url = "https://github.com/nvim-lua/popup.nvim",
    },
    ["quick-scope"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/quick-scope",
      url = "https://github.com/unblevable/quick-scope",
    },
    ripgrep = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/ripgrep",
      url = "https://github.com/BurntSushi/ripgrep",
    },
    ["targets.vim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/targets.vim",
      url = "https://github.com/wellle/targets.vim",
    },
    ["telescope-fzf-native.nvim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
      url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
    },
    ["telescope-media-files.nvim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim",
      url = "https://github.com/nvim-telescope/telescope-media-files.nvim",
    },
    ["telescope.nvim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/telescope.nvim",
      url = "https://github.com/nvim-telescope/telescope.nvim",
    },
    ["toggleterm.nvim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
      url = "https://github.com/akinsho/toggleterm.nvim",
    },
    undotree = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/undotree",
      url = "https://github.com/mbbill/undotree",
    },
    ["vim-SearchHighlighting"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-SearchHighlighting",
      url = "https://github.com/inkarkat/vim-SearchHighlighting",
    },
    ["vim-argumentative"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-argumentative",
      url = "https://github.com/PeterRincker/vim-argumentative",
    },
    ["vim-code-dark"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-code-dark",
      url = "https://github.com/tomasiser/vim-code-dark",
    },
    ["vim-expand-region"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-expand-region",
      url = "https://github.com/terryma/vim-expand-region",
    },
    ["vim-fugitive"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-fugitive",
      url = "https://github.com/tpope/vim-fugitive",
    },
    ["vim-indent-object"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-indent-object",
      url = "https://github.com/michaeljsmith/vim-indent-object",
    },
    ["vim-ingo-library"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-ingo-library",
      url = "https://github.com/inkarkat/vim-ingo-library",
    },
    ["vim-repeat"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-repeat",
      url = "https://github.com/tpope/vim-repeat",
    },
    ["vim-schlepp"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-schlepp",
      url = "https://github.com/zirrostig/vim-schlepp",
    },
    ["vim-searchindex"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-searchindex",
      url = "https://github.com/google/vim-searchindex",
    },
    ["vim-sneak"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-sneak",
      url = "https://github.com/justinmk/vim-sneak",
    },
    ["vim-sort-motion"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-sort-motion",
      url = "https://github.com/christoomey/vim-sort-motion",
    },
    ["vim-startify"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-startify",
      url = "https://github.com/mhinz/vim-startify",
    },
    ["vim-surround"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-surround",
      url = "https://github.com/tpope/vim-surround",
    },
    ["vim-titlecase"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-titlecase",
      url = "https://github.com/christoomey/vim-titlecase",
    },
    ["vim-tomorrow-theme"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-tomorrow-theme",
      url = "https://github.com/chriskempson/vim-tomorrow-theme",
    },
    ["vim-trailing-whitespace"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-trailing-whitespace",
      url = "https://github.com/bronson/vim-trailing-whitespace",
    },
    ["vim-vmath"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/vim-vmath",
      url = "https://github.com/nixon/vim-vmath",
    },
    ["zen-mode.nvim"] = {
      loaded = true,
      path = "/Users/yoshihotaru/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
      url = "https://github.com/folke/zen-mode.nvim",
    },
  }

  time([[Defining packer_plugins]], false)
  if should_profile then
    save_profiles()
  end
end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command(
    'echohl ErrorMsg | echom "Error in packer_compiled: '
      .. error_msg
      .. '" | echom "Please check your config for correctness" | echohl None'
  )
end
