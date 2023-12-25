return {
  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = {
      { "mfussenegger/nvim-dap" },
      { "nvim-treesitter/nvim-treesitter" },
    },
    opts = {},
  },
  {
    "rcarriga/nvim-dap-ui",
    opts = {
      library = { plugins = { "nvim-dap-ui" }, types = true },
    },
  },
}
