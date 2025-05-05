return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true, -- Zeigt versteckte Dateien an
					hide_dotfiles = false, -- Versteckt keine .dot-Dateien
					hide_gitignored = false, -- Zeigt auch gitignored Dateien
				},
			},
		})
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")
		vim.keymap.set("n", "<C-y>", ":Neotree toggle filesystem left<CR>", { noremap = true, silent = true })
	end,
}
