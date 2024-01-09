-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  t = {
    -- Disabled keys
    -- setting a mapping to false will disable it
    ["<leader>S."] = false,
    ["<leader>Sd"] = false,
    ["<leader>Sf"] = false,
    ["<leader>Sl"] = false,
    ["<leader>Ss"] = false,
    ["<leader>bp"] = false,
    ["<leader>b|"] = false,
  },
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- navigate buffer tabs with `H` and `L`
    L = {
      function()
        require("astronvim.utils.buffer").nav(
          vim.v.count > 0 and vim.v.count or 1
        )
      end,
      desc = "Next buffer",
    },
    H = {
      function()
        require("astronvim.utils.buffer").nav(
          -(vim.v.count > 0 and vim.v.count or 1)
        )
      end,
      desc = "Previous buffer",
    },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- Reload Config
    ["<leader>pr"] = {
      ":luafile ~/.config/astronvim/lua/user/init.lua<cr>",
      desc = "AstroNvim reload",
    },
    -- Buffers
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>bk"] = { ":bd<cr>", desc = "Close current buffer" },
    ["<leader>b-"] = { ":split<cr>", desc = "Split horizontal" },
    ["<leader>b\\"] = { ":vsplit<cr>", desc = "Split vertical" },
    -- Sessions
    ["<leader>r"] = {
      ":Telescope neovim-project history<cr>",
      desc = " Recent sessions",
    },
    ["<leader>R"] = {
      ":Telescope neovim-project discover<cr>",
      desc = "Load session",
    },
    -- Todo-comments:
    ["<leader>T"] = { name = "Todo" },
    ["<leader>Tq"] = { ":TodoQuickFix<cr>", desc = "QuickFix" },
    ["<leader>Tt"] = { ":TodoTelescope<cr>", desc = "Project todos" },
    ["<leader>Tl"] = { ":TodoLocList<cr>", desc = "Local todos" },
    ["t]"] = {
      function() require("todo-comments").jump_next() end,
      desc = "Next todo",
    },
    ["t["] = {
      function() require("todo-comments").jump_prev() end,
      desc = "Prev todo",
    },
  },
}
