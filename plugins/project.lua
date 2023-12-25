return {
  {
    "coffebar/neovim-project",
    opts = {
      projects = {
        "~/.config/astronvim/lua/user",
        "~/go/src/gitlab.com/dunaevsemyon/*",
        "~/go/src/gitlab.com/dcmsteam/*",
      },
      last_session_on_startup = true,
    },
    init = function() vim.opt.sessionoptions:append "globals" end,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim" },
      { "Shatur/neovim-session-manager" },
    },
    lazy = false,
  },
}
