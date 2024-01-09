return {
  {
    "nvim-neorg/neorg",
    lazy = false,
    build = ":Neorg sync-parsers",
    opts = {
      load = {
        ["core.concealer"] = {},
        ["core.defaults"] = {},
        ["core.summary"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              default = "~/notes/default",
              develop = "~/notes/develop",
              job = "~/notes/job",
            },
          },
        },
        ["core.journal"] = {
          config = {
            workspace = "default",
          },
        },
        ["core.qol.todo_items"] = {
          config = {
            create_todo_items = true,
            create_todo_parents = true,
          },
        },
      },
    },
  },
}
