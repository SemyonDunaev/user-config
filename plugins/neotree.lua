return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = false,
      buffers = {
        follow_current_file = {
          enable = true,
          leave_dirs_open = true,
        },
        group_empty_dirs = true,
      },
    },
  },
}
