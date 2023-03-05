lvim.leader = "space"

-- Buffer
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

lvim.keys.insert_mode["jk"] = "<ESC>"


-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}

-- keymap("v", "p", '"_dP', opts)

lvim.keys.normal_mode["<A-S-j>"] = ":t.<CR>"
lvim.keys.normal_mode["<A-S-k>"] = ":t-<CR>"
lvim.keys.visual_mode["<A-S-j>"] = ":t.<CR>"
lvim.keys.visual_mode["<A-S-k>"] = ":t-<CR>"


-- lvim.builtin.nvimtree._setup_called
lvim.builtin.which_key.mappings["o"] = { "<cmd>NvimTreeFocus<CR>", "Focus explorer" }

-- terminal
lvim.builtin.terminal.open_mapping = "<c-t>"

-- lvim.builtin.terminal.
--
lvim.builtin.which_key.mappings["t"] = { "<cmd>ToggleTerm<CR>", "Terminal" }
--
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
