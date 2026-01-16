return {
    {
        "saghen/blink.cmp",
        opts = {
            keymap = {
                preset = "default",
                ["<C-p>"] = { "select_prev", "fallback" },
                ["<C-n>"] = { "select_next", "fallback" },
                ["<C-y>"] = { "accept", "fallback" },
                ["<C-l>"] = { "snippet_forward", "fallback" },
                ["<C-h>"] = { "snippet_backward", "fallback" },
            },
            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
            },
            snippets = {
                preset = "luasnip",  -- Use LuaSnip as snippet engine
            },
        },
        dependencies = {
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",  -- Pre-made snippets
        },
    },
}