return {
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",

  {
    -- This tells lazy.nvim you're using a local plugin, not a GitHub repo
    dir = "~/.config/nvim/lua/writer_templates",
    name = "writer_templates",
    lazy = false,

    -- This tells it how to set it up
    config = function()
      require("writer_templates").setup()
    end,
  },
}

