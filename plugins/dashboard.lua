return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      shortcut_type = "letter",
      change_to_vcs_root = true,
      config = {
        header = {
          "NeoVim Workstation",
        },
        project = { limit = 5 },
        mru = { limit = 10 },
        disable_move = true,
      },
    },
  },
}
