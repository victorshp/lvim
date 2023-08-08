-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Move between tabs
lvim.keys.normal_mode["<Tab>"] = ":bnext<cr>"
lvim.keys.normal_mode["<S-Tab>"] = ":bprev<cr>"
-- Split window vertically or horizontally
lvim.keys.normal_mode["|"] = ":vsplit<CR>"
lvim.keys.normal_mode["-"] = ":split<CR>"
-- Wrap and break text to fit window
vim.wo.wrap = true
vim.wo.linebreak = true
-- Telescope
lvim.keys.normal_mode["<Space>a"] = ":Telescope live_grep<cr>" -- Make livegrep appear
--   Make telescope become 2 vertical windows side-by-side
lvim.builtin.telescope = {
        defaults = {
            layout_strategy = "horizontal",
            layout_config = { height=0.95 },
        },
}

-- Default color theme
lvim.colorscheme = "shine"

lvim.plugins = {
	-- Color schemes
	{ "lunarvim/colorschemes" },
	{ "folke/tokyonight.nvim" },
	{ "arcticicestudio/nord-vim" },
	{ "mfussenegger/nvim-jdtls" },
	{ "TovarishFin/vim-solidity" }
	-- End of Color schemes
}
