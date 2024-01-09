return {
  {
    "nvim-neorg/neorg",
    lazy = false,
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      load = {
        ["core.concealer"] = {},
        ["core.defaults"] = {},
        ["core.summary"] = {},
        ["core.ui.calendar"] = {},
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        },
        ["core.dirman"] = {
          config = {
            workspaces = {
              dcms = "~/notes/dcms",
              default = "~/notes/default",
              develop = "~/notes/develop",
              journal = "~/notes/journal",
              learn = "~/notes/learn",
            },
          },
        },
        ["core.journal"] = {
          config = {
            use_template = true,
            workspace = "journal",
          },
        },
        ["core.keybinds"] = {
          config = {
            default_keybinds = false,
          }
      },
    },
  },
}
