-- 默认不要折叠
local packer = require("packer")
packer.startup(
  function(use)
   -- Packer 可以管理自己本身
    use 'wbthomason/packer.nvim'
   -- 插件列表...
    --------------------- colorschemes --------------------
    -- tokyonight
    -- use("folke/tokyonight.nvim"）
    -- ·catppuccin
    use ({"catppuccin/nvim", as = "catppuccin" })
    -- vscode:
    use ('Mofiqul/vscode.nvim')
    -------------------------------------------------------
     -------------------------- plugins -------------------------------------------
    -- nvim-tree 
    use({"kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
    -- bufferline
    use({"akinsho/bufferline.nvim", requires = {"kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
    -- lualine (新增)
    use({"nvim-lualine/lualine.nvim", requires = {"kyazdani42/nvim-web-devicons" } })use("arkav/lualine-lsp-progress")
    -- telescope （新增）
    use {
      'nvim-telescope/telescope.nvim', requires = {
      "nvim-lua/plenary.nvim" } }
    -- dashboard-nvim (新增)
    use("glepnir/dashboard-nvim")
    -- project
    use("ahmedkhalf/project.nvim")
    -- treesitter （新增）
    use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    --use("williamboman/nvim-lsp-installer")
    -- Lspconfig
    use({"neovim/nvim-lspconfig" })
    use({"williamboman/mason.nvim" })
    use({"williamboman/mason-lspconfig.nvim" })
        -- 补全引擎
    use("hrsh7th/nvim-cmp")
    -- snippet 引擎
    use("hrsh7th/vim-vsnip")
    -- 补全源
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- {name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- {name = 'path' }
    use("hrsh7th/cmp-cmdline") -- {name = 'cmdline' }

    -- 常见编程语言代码段
    use("rafamadriz/friendly-snippets")
    --ui
    use("tami5/lspsaga.nvim" )
        -- 代码格式化
    use({"jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
    -- 代码运行器
    use('CRAG666/code_runner.nvim')
    --括号补全
    use("windwp/nvim-autopairs")
    --注释
    use("numToStr/Comment.nvim")
    -- surround
    use("ur4ltz/surround.nvim")
    -- toggleterm
    use {"akinsho/toggleterm.nvim", tag = 'v2.*'}
end)

