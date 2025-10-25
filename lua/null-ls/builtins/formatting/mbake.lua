local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "mbake",
    meta = {
        url = "https://github.com/EbodShojaei/bake",
        description = "Makefile formatter and linter.",
    },
    method = FORMATTING,
    filetypes = { "make" },
    generator_opts = {
        command = "mbake",
        args = {
            "format",
            "--stdin",
        },
        from_stdin = true,
        to_stdin = true,
    },
    factory = h.formatter_factory,
})
