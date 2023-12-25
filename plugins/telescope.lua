return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      wrap_results = false,
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          width = 0.9,
          height = 0.8,
          prompt_position = "top",
        },
      },
    },
  },
}
