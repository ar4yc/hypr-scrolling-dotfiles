vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  callback = function()
    local dir = vim.fn.expand("<afile>:p:h")
    if vim.fn.isdirectory(dir) == 0 then
      vim.fn.mkdir(dir, "p")
    end
  end,
})

return {
  { 'nvim-tree/nvim-web-devicons' }, {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          separator_style = "slant",
          always_show_bufferline = true,
          show_buffer_close_icons = true,
          offsets = {
            {
              filetype = "neo-tree",
              text = "Project",
              text_align = "center",
              separator = true,
            }
          },
        }
      })
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      local notify = vim.notify
      vim.notify = function(msg, log_level, opts)
        if msg:match("ENOENT") or msg:match("no such file") then
          return
        end
        notify(msg, log_level, opts)
      end

      require("neo-tree").setup({
        close_if_last_window = true,
        filesystem = {
          bind_to_cwd = false,
          check_not_found_dirs = false,
          
          filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
          },
          follow_current_file = { enabled = true },
        },
        window = {
          width = 30,
          mappings = { ["<space>"] = "none" }
        }
      })
    end,
  },
    {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = {
          theme = 'auto',
          icons_enabled = true,
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = { { 'filename', path = 1 } },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' }
        },
        winbar = {
          lualine_c = {
            {
              function()
                local icon, _ = require('nvim-web-devicons').get_icon(vim.fn.expand('%:t'), vim.fn.expand('%:e'), { default = true })
                local name = vim.fn.expand('%:t')
                if name == '' then name = '[No Name]' end
                return icon .. ' ' .. name
              end,
            }
          }
        },
        inactive_winbar = {
          lualine_c = {
            {
              function()
                local icon, _ = require('nvim-web-devicons').get_icon(vim.fn.expand('%:t'), vim.fn.expand('%:e'), { default = true })
                local name = vim.fn.expand('%:t')
                if name == '' then name = '[No Name]' end
                return icon .. ' ' .. name
              end,
            }
          }
        }
      })
    end
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type _ibl.config
    opts = {
      indent = {
        char = "│",
      },
      scope = {
        enabled = true,
        show_start = false,
        show_end = false,
      },
    },
  },
  {
    'echasnovski/mini.pairs',
    version = '*',
    config = function()
      require('mini.pairs').setup({
        modes = { insert = true, command = false, terminal = false },
        mappings = {
          ['('] = { action = 'open', pair = '()', neigh_pattern = '[^\\].' },
          ['['] = { action = 'open', pair = '[]', neigh_pattern = '[^\\].' },
          ['{'] = { action = 'open', pair = '{}', neigh_pattern = '[^\\].' },
          
          [')'] = { action = 'close', pair = '()', neigh_pattern = '[^\\].' },
          [']'] = { action = 'close', pair = '[]', neigh_pattern = '[^\\].' },
          ['}'] = { action = 'close', pair = '{}', neigh_pattern = '[^\\].' },
          
          ['"'] = { action = 'closeopen', pair = '""', neigh_pattern = '[^%%\\].' },
          ["'"] = { action = 'closeopen', pair = "''", neigh_pattern = '[^%%a\\].' },
        },
      })
    end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = false,
        integrations = {
          neo_tree = true,
          gitsigns = true,
          bufferline = true,
          indent_blankline = { enabled = true },
        }
      })
      vim.cmd.colorscheme "catppuccin"
    end
  },
}