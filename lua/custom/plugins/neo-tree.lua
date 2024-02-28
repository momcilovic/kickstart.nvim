return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		local neotree = require("neo-tree")
		neotree.setup({
			filesystem = {
				filtered_items = {
					visible = false,       -- when true, they will just be displayed differently than normal items
					hide_dotfiles = false, -- I want to see the dotfiles
					hide_gitignored = true,
				},
			},
		})
		-- Neotree keymaps
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")
		vim.keymap.set("n", "<leader>tt", ":Neotree toggle<CR>")
	end,
}
