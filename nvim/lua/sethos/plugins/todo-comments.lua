return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local todo_comments = require("todo-comments")

    -- Set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "]t", function()
      todo_comments.jump_next()
    end, { desc = "Next TODO comment" })

    keymap.set("n", "[t", function()
      todo_comments.jump_prev()
    end, { desc = "Previous TODO comment" })

    keymap.set("n", "<leader>td", function()
      todo_comments.open()
    end, { desc = "Open TODO list" })

    keymap.set("n", "<leader>ts", function()
      todo_comments.search()
    end, { desc = "Search TODO comments" })

    -- Configure todo-comments.nvim
    todo_comments.setup {
      signs = true, -- Show icons in the signs column
      sign_priority = 8, -- Priority of the sign column
      keywords = {
        FIX = { icon = " ", color = "error", alt = { "FIXME", "BUG" } },
        TODO = { icon = " ", color = "info", alt = { "NOTE", "TBC" } },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning" },
        INFO = { icon = "🛈 ", color = "info" }, -- Nerd Font icon for INFO
        HINT = { icon = "🛈 ", color = "hint" }, -- Nerd Font icon for HINT

      },
      colors = {
        error = { "ErrorMsg", "DiagnosticError" },
        info = { "MoreMsg", "DiagnosticInfo" },
        warning = { "WarningMsg", "DiagnosticWarning" },
        hint = { "HintMsg", "DiagnosticHint" },
      },
    }
  end,
}
