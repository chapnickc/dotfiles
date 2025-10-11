vim.opt.runtimepath:prepend(vim.fn.expand("~/.vim"))
vim.opt.runtimepath:append(vim.fn.expand("~/.vim/after"))
vim.opt.packpath = vim.opt.runtimepath:get()


--vim.g.python3_host_prog = vim.fn.exepath("python3")
--vim.g.python3_host_prog = '/Users/chad/.local/bin/pynvim-python'
--vim.g.python_host_prog = '/opt/homebrew/bin/python3'
--vim.g.python3_host_prog = '/opt/homebrew/bin/python3'
--vim.g.python3_host_prog="/Users/chad/.local/bin/pynvim-python"

vim.cmd("source " .. vim.fn.expand("~/.vimrc"))


require("nvim-treesitter.configs").setup {
    ensure_installed = { "lua",
        "python",
        "markdown",
        "markdown_inline",
        "javascript",
        "typescript"
    },
    highlight = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
    },
    indent = {
        enable = true,
    },
}
--require'treesitter-context'.setup{
--  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
--  max_lines = 0,
--}

require('neo-tree').setup({
    --window = {
    --    position = "right",
    --},
    filesystem = {
        follow_current_file = {
            enabled = true,
        },
    },
})

require("codeium").setup({
    virtual_text = {
        idle_delay = 200,
    }
})




local cmp = require('cmp')
local capabilities = require('cmp_nvim_lsp').default_capabilities()
cmp.setup({
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        --{ name = 'vsnip' }, -- For vsnip users.
    }, {
        { name = 'buffer' },
    }),
    mapping = cmp.mapping.preset.insert({
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        --['<C-Space>'] = cmp.mapping.complete(),
        --['<C-e>'] = cmp.mapping.abort(),
        ['<Enter>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    }),

});

--[[
require('lspconfig').pyright.setup {
    capabilities = capabilities,
    --before_init = function(_, config)
    --    default_venv_path = path.join(vim.fn.getcwd(), ".virtualenv", "bin", "python")
    --    config.settings.python.pythonPath = default_venv_path
    --end,
    settings = {
        python = {
            analysis = {
                autoImportCompletions = true,
            },
        },
    },
    vim.api.nvim_create_autocmd("BufWritePre", {
        callback = function()
            vim.lsp.buf.format({ async = false })
        end,
    })
}
--]]
--
--local default_venv_path = os.getenv("VIRTUAL_ENV") .. "/bin/python"
--vim.g.python_host_prog = default_venv_path


vim.lsp.config('ty', {
    --cmd = { "ty", "server" },
    --root_markers = {
    --    ".git",
    --},
    --filetypes = { "python" },
    settings = {
        ty = {
            experimental = {
                autoImport = true,
            },
        },
    },
})
--vim.lsp.config('ruff', {
--    cmd = { "ruff", "server" },
--    root_markers = { ".git", },
--    filetypes = { "python" },
--})
--vim.lsp.enable("ruff")
--[[
    vim.lsp.config.ty = {
        cmd = { "ty", "server" },
        root_markers = { ".git" },
        root_dir = require('lspconfig').util.root_pattern('.git'),
        filetypes = { "python" },
        on_attach = function(client, bufnr)
            print('ty comp' .. tostring(client.supports_method("textDocument/completion")))
            print('ty def' .. tostring(client.supports_method("textDocument/definition")))
        end
    }
    ]]


vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            format = {
                enable = true,
                defaultConfig = {
                    indent_style = "space",
                    indent_size = "4",
                },
            },
            diagnostics = {
                globals = { 'vim' }
            },
        }
    },
    --cmd = { "lua-language-server" },
    --root_markers = {},
    --filetypes = { "lua" },
})

vim.lsp.config('tinymist', {
    --cmd = { "tinymist" },
    --root_markers = {},
    --filetypes = {
    --    "typst"
    --},
    settings = {
        formatterMode = "typstyle",
        exportPdf = "onType",
        semanticTokens = "disable"
    }
})

vim.lsp.config.ts_ls = {
    cmd = { "typescript-language-server", "--stdio" },
    root_markers = { ".git", "node_modules" },
    filetypes = {
        "typescript",
        "typescriptreact",
        "javascript",
        "javascriptreact",
    }
}
vim.lsp.enable({
    "lua_ls",
    "ruff",
    "tinymist",
    "ts_ls",
    "ty",
})



local obsidianDir = "$HOME/.journal/ccdefault";
require("obsidian").setup({
    workspaces = {
        {
            name = "personal",
            path = obsidianDir,
        },
    },
    follow_img_func = function(img)
        local actual_path = vim.fn.expand(obsidianDir .. "/" .. img)
        print(actual_path)
        vim.fn.jobstart { "qlmanage", "-p", actual_path } -- Mac OS quick look preview
    end,
    attachments = {
        -- Prefix image names with timestamp.
        img_name_func = function()
            return string.format("%s-", os.date("%Y%m%d-%H%M%S"))
        end,
    }
})

require('gitsigns').setup({
    current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    --word_diff=true,
    on_attach = function(bufnr)
        local gitsigns = require('gitsigns')

        local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
            if vim.wo.diff then
                vim.cmd.normal({ ']c', bang = true })
            else
                gitsigns.nav_hunk('next')
            end
        end)

        map('n', '[c', function()
            if vim.wo.diff then
                vim.cmd.normal({ '[c', bang = true })
            else
                gitsigns.nav_hunk('prev')
            end
        end)

        map('n', '<leader>hr', gitsigns.reset_hunk)
        map('v', '<leader>hr', function()
            gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
        end)
        map('n', '<leader>hp', gitsigns.preview_hunk)
        map('n', '<leader>hi', gitsigns.preview_hunk_inline)
    end,
    base = vim.fn.systemlist("git merge-base HEAD origin/main")[1]
})

require('colorizer').setup()

require('typst-preview').setup({})

require('render-markdown').setup({
    bullet = {
        right_pad = 1,
    },
})


require('fzf-lua').setup {
    keymap = {
        builtin = {
            ["<C-\\>"] = "toggle-preview",
        }
    },
    grep = {
        rg_glob = true
    }
}


vim.keymap.set('n', '<leader>a', function()
    require('fzf-lua').lsp_code_actions()
end)
