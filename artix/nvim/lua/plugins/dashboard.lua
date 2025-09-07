-- Override Snacks dashboard with custom bonsai
-- Save as ~/.config/nvim/lua/plugins/snacks.lua

return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        enabled = true,
        sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
        },
        preset = {
          header = [[
  +------+.      +------+       +------+       +------+      .+------+
  |`.    | `.    |\     |\      |      |      /|     /|    .' |    .'|
  |  `+--+---+   | +----+-+     +------+     +-+----+ |   +---+--+'  |
  |   |  |   |   | |    | |     |      |     | |    | |   |   |  |   |
  +---+--+.  |   +-+----+ |     +------+     | +----+-+   |  .+--+---+
  `. |    `.|    \|     \|     |      |     |/     |/    |.'    | .'
  `+------+     +------+     +------+     +------+     +------+'
   ]],
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            {
              icon = " ",
              key = "c",
              desc = "Config",
              action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
            },
            { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
      },
    },
  },
  -- Disable the regular dashboard-nvim to prevent conflicts
  {
    "nvimdev/dashboard-nvim",
    enabled = false,
  },
}
