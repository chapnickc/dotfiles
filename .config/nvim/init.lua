vim.opt.runtimepath:prepend(vim.fn.expand("~/.vim"))
vim.opt.runtimepath:append(vim.fn.expand("~/.vim/after"))
vim.opt.packpath = vim.opt.runtimepath:get()

--vim.cmd("source " .. vim.fn.expand("~/.vimrc"))

local gh = function(x) return 'https://github.com/' .. x end
vim.pack.add({
    gh('alvan/vim-closetag'),
    gh('Yggdroot/indentLine'),
    gh('jpalardy/vim-slime'), --         " tmux integration
    gh('nvim-treesitter/nvim-treesitter'),
    gh('rafi/awesome-vim-colorschemes'),
    gh('rose-pine/neovim'),
    gh('alexmozaidze/palenight.nvim'),
    gh('norcalli/nvim-colorizer.lua'),
    gh('lervag/vimtex'),
    gh('matze/vim-tex-fold'),
    gh('Exafunction/windsurf.nvim'),
    gh('junegunn/fzf'),     --, { 'do': { -> fzf#install() } }
    gh('junegunn/fzf.vim'),
    gh('ibhagwan/fzf-lua'), --" also keeping regular fzf around for now
    gh('tpope/vim-fugitive'),
    gh('tpope/vim-rhubarb'),
    --gh('nvim-treesitter/nvim-treesitter'), --{'do': ':TSUpdate'}
    gh('nvim-lua/plenary.nvim'),
    gh('nvim-neo-tree/neo-tree.nvim'),
    gh('MunifTanjim/nui.nvim'),
    gh('nvim-tree/nvim-web-devicons'),

    gh('neovim/nvim-lspconfig'),
    gh('hrsh7th/cmp-nvim-lsp'),
    gh('hrsh7th/cmp-buffer'),
    gh('hrsh7th/cmp-path'),
    gh('hrsh7th/cmp-cmdline'),
    gh('hrsh7th/nvim-cmp'),

    gh('epwalsh/obsidian.nvim'),

    gh('lewis6991/gitsigns.nvim'),
    gh('APZelos/blamer.nvim'),
    gh('sindrets/diffview.nvim'),

    gh('iamcco/markdown-preview.nvim'),
    gh('MeanderingProgrammer/render-markdown.nvim'),
    gh('chomosuke/typst-preview.nvim'),
    gh('yetone/avante.nvim'),
    gh('NickvanDyke/opencode.nvim'),
    gh('folke/sidekick.nvim'),
    gh('CopilotC-Nvim/CopilotChat.nvim'),
    gh('olimorris/codecompanion.nvim'),
    gh('stevearc/oil.nvim'),
})

-- Neovim Lua init.lua equivalent

-- Clipboard
vim.opt.clipboard:append("unnamedplus")

-- Compatibility
vim.opt.compatible = false

-- Filetype & syntax
vim.cmd([[filetype plugin indent on]])
vim.cmd([[syntax enable]])

-- Terminal settings for non-nvim
if not vim.fn.has("nvim") then
    vim.opt.term = "screen-256color"
    vim.opt.termencoding = "utf-8"
end

-- Leader key
vim.g.mapleader = " "

-- Keymaps
local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<leader>r", ":source ~/.vimrc<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>l", ":bnext<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>h", ":bprevious<CR>", opts)
vim.api.nvim_set_keymap("n", "<F1>", ":setlocal spell! spelllang=en_us<CR>", opts)
vim.api.nvim_set_keymap("n", "<F2>", "mzgg=G`z", opts)
vim.api.nvim_set_keymap("n", "<leader>ot", ":ObsidianToday<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>os", ":ObsidianSearch<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>cp", ':let @+ = expand("%")<CR>', opts)

-- YouCompleteMe
vim.api.nvim_set_keymap("n", "<Leader>[", ":lua vim.lsp.buf.hover()<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>]", ":pclose<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>g", ":lua vim.lsp.buf.definition()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>G", ":lua vim.lsp.buf.references()<CR>", opts)

vim.g.ycm_complete_in_comments = 1
vim.g.ycm_complete_in_strings = 1
vim.g.ycm_min_num_of_chars_for_completion = 1
vim.g.ycm_show_diagnostics_ui = 0
vim.g.ycm_autoclose_preview_window_after_completion = 1

-- Vim-Slime
vim.api.nvim_set_keymap("x", "<leader><tab>", "<Plug>SlimeRegionSend", {})
vim.api.nvim_set_keymap("n", "<leader><tab>", "<Plug>SlimeLineSend", {})
vim.api.nvim_set_keymap("n", "<leader>p<tab>", "<Plug>SlimeParagraphSend", {})
vim.api.nvim_set_keymap("n", "<leader>N", "<Plug>SlimeConfig", {})

vim.g.slime_target = "tmux"
vim.g.slime_paste_file = vim.fn.tempname()
vim.g.slime_default_config = { socket_name = "default", target_pane = "1" }
vim.g.slime_python_ipython = 1
vim.g.slime_dont_ask_default = 1
vim.g.slime_preserve_curpos = 0
vim.g.slime_bracketed_paste = 1

vim.api.nvim_set_keymap("x", "<leader>s", "<Plug>SlimeRegionSend", {})
vim.api.nvim_set_keymap("n", "<leader>s", "<Plug>SlimeLineSend", {})
vim.api.nvim_set_keymap("n", "<leader>ps", "<Plug>SlimeParagraphSend", {})

-- Vim-Airline
vim.g.airline_powerline_fonts = 1
vim.g.airline_theme = 'raven'
vim.g["airline#extensions#tabline#enabled"] = 1
vim.g["airline#extensions#tabline#fnamemod"] = ':t'

-- indentLine
vim.g.indentLine_color_dark = 1
vim.g.indentLine_color_term = 239
vim.g.indentLine_color_gui = "#555555"
vim.g.indentLine_setConceal = 0

-- VimTeX
vim.api.nvim_set_keymap("n", "<leader>tc", ":VimtexCompileSS<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>tv", ":VimtexView<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>tx", ":VimtexClean<CR>", opts)

vim.g.vimtex_latexmk_build_dir = "./build"
vim.g.vimtex_view_general_viewer = "open"
vim.g.vimtex_view_general_options = "@pdf"

-- Vim-TeX-Fold
vim.g.tex_conceal = 'g'
vim.g.tex_fold_enable = 0
vim.g.tex_fold_additional_envs = { 'circuitikz', 'tabular', 'tabu', 'Karnaugh', 'multicols', 'itemize', 'tikzpicture',
    'question' }

-- Autocommands
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.json",
    command = "setlocal conceallevel=0",
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2
        vim.opt_local.shiftwidth = 2
        vim.opt_local.expandtab = true
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.cmd([[
      syntax match commonOperator "\(+\|=\|-\|\^\|\*\)"
      syntax match baseDelimiter "\(\.\|&\|}\|{\||\)"
      syntax match curlyBraces "\(\}\|{\|_\)"
      hi curlyBraces ctermfg=43
      hi link commonOperator SpecialKey
      hi link baseDelimiter SpecialChar
    ]])
    end
})

-- Highlight overrides
vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
vim.cmd([[hi StatusLine guibg=#333333 guifg=#c9c9c9]])
vim.cmd([[hi EndOfBuffer guibg=NONE guifg=#28aa7c]])
vim.cmd([[hi Comment guibg=NONE guifg=#888888]])
vim.cmd([[hi NonText guibg=NONE guifg=#777777]])

-- FZF keymaps
vim.api.nvim_set_keymap("n", "<leader>r",
    [[<cmd>lua require("fzf-lua").grep({ search = "", winopts={preview={hidden=true}}})<CR>]], opts)
vim.api.nvim_set_keymap("n", "<leader>f", [[<cmd>FzfLua files winopts.preview.hidden=true<CR>]], opts)
vim.api.nvim_set_keymap("n", "<leader>y", [[<cmd>FzfLua oldfiles<CR>]], opts)
vim.api.nvim_set_keymap("n", "<leader><esc>", [[<cmd>FzfLua buffers winopts.preview.hidden=true<CR>]], opts)

vim.g.fzf_history_dir = "~/.config/local/share/fzf-vim-history"
vim.g.blamer_enabled = 1
vim.g.blamer_date_format = "%y/%m/%d %H:%M"


-- Appearance & Interface
vim.opt.termguicolors = true -- Enable 24-bit RGB colors
vim.opt.background = "dark"
vim.opt.guifont = "Hack Regular:h13"
vim.opt.laststatus = 2     -- Always show status bar
vim.opt.ruler = true       -- Cursor position
vim.opt.showmatch = true   -- Show matching brackets
vim.opt.cursorline = false -- Don't show cursor line
vim.opt.lazyredraw = true  -- Faster scrolling
vim.opt.pumheight = 20     -- Limit popup menu height
vim.opt.mouse = "a"        -- Enable mouse in all modes

-- Search Settings
vim.opt.ignorecase = true -- Case-insensitive search
vim.opt.incsearch = true  -- Highlight as you type
vim.opt.hlsearch = false  -- Don't keep highlight after search
vim.opt.smartcase = true  -- Override ignorecase if search has caps

-- Files & Buffers
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.autoread = true  -- Reload files changed outside Neovim
vim.opt.hidden = true    -- Allow hidden modified buffers
vim.opt.autowrite = true -- Auto-save file
vim.opt.modeline = true  -- Enable filetype variables

-- Indentation & Tabs
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4      -- Show tabs as 4 spaces
-- vim.opt.softtabstop = 4            -- Lua handles this via tabstop/shiftwidth usually
vim.opt.shiftwidth = 4   -- Indent width for >
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.backspace = "indent,eol,start"

-- Behavior
vim.opt.wrap = false     -- Disable line wrap
vim.opt.timeoutlen = 900 -- Faster mode switching
vim.opt.ttimeoutlen = 5
vim.opt.foldmethod = "indent"
vim.opt.conceallevel = 2 -- Equivalent to set cole=2


vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'NONE' }) -- Adjust fg for border-like appearance

vim.keymap.set(
    "n",
    "<leader>\\",
    ':lua require("codecompanion").toggle({ window_opts = { layout = "float", width = 0.6 }})<CR>',
    { desc = "Toggle AI Chat" }
)


if false then
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
end
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
--local capabilities = require('cmp_nvim_lsp').default_capabilities()
cmp.setup({
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'path' },
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


vim.lsp.config('ty', {
    settings = {
        ty = {
            experimental = {
                autoImport = true,
            },
        },
    },
})
vim.lsp.config('ruff', {
    on_attach = function(_, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format()
                vim.lsp.buf.code_action({ context = { only = { "source.fixAll.ruff" } }, apply = true })
            end,
        })
    end
})
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
    on_attach = function(_, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format()
            end,
        })
    end
})
vim.lsp.config('tinymist', {
    settings = {
        formatterMode = "typstyle",
        exportPdf = "onType",
        semanticTokens = "disable"
    }
})

vim.lsp.config("ts_ls", {
    on_attach = function(_, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format()
            end,
        })
    end
})
vim.lsp.enable({
    "lua_ls",
    "ruff",
    "tinymist",
    "ts_ls",
    "ty",
    "copilot",
    "gopls"
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

if false then
    require('avante').setup({
        provider = "gemini",
        mode = "legacy",
    })
end

--require("opencode").setup({})
if false then
    require("sidekick").setup({
        cli = {
            win = {
                layout = "float",
                float = {
                    width = 0.77,
                    height = 0.77,
                },
            }
        },
    })
end

require("codecompanion").setup({
    strategies = {
        chat = {
            adapter = "gemini",
        },
        inline = {
            adapter = "gemini",
        },
        cmd = {
            adapter = "gemini",
        },
    },
    adapters = {
        http = {
            gemini = function()
                return require("codecompanion.adapters").extend("gemini", {
                    env = {
                        GEMINI_API_KEY = "GEMINI_API_KEY",
                    }
                })
            end
        },
        acp = {
            gemini_cli = function()
                return require("codecompanion.adapters").extend("gemini_cli", {
                    defaults = {
                        auth_method = "gemini-api-key", -- "oauth-personal"|"gemini-api-key"|"vertex-ai"
                    },
                    env = {
                        GEMINI_API_KEY = "GEMINI_API_KEY"
                    },
                })
            end,
        },
    }
})

require("rose-pine").setup({
    variant = "moon", -- auto, main, moon, or dawn
    styles = {
        transparency = true
    }
})
vim.cmd("colorscheme rose-pine")
require("oil").setup()


vim.api.nvim_create_autocmd('FileType', {
    pattern = {
        "lua",
        "python",
        "markdown",
        "markdown_inline",
        "javascript",
        "typescript"
    },
    callback = function() vim.treesitter.start() end,
})
