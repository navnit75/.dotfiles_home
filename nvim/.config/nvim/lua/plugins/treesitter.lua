return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.config")
        config.setup({
            ensure_installed = {
                "vimdoc",
                "lua",
                "java",
                "typescript"
            },
            sync_install = false, 
            auto_install = true,
            indent = {
                enable = true
            },
            highlight = {
                enable = true
            }
        })
    end
}
