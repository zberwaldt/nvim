vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    use({
        'navarasu/onedark.nvim',
        as = 'onedark',
        config = function()
            vim.cmd('colorscheme onedark')
        end
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})   
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
    use('vimwiki/vimwiki')
    use('github/copilot.vim')
    use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}
    use('alexghergh/nvim-tmux-navigation')
end)
