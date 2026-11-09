return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  opts = {
    options = {
      theme = "auto",
      component_separators = "",
      section_separators = { left = "", right = "" },
      globalstatus = true,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "filename" },
      lualine_c = {},
      lualine_x = {},
      lualine_y = { { "diff", symbols = { added = " ", modified = " ", removed = " " } } },
      lualine_z = { "location" },
    },
    inactive_sections = {},
  },
}
