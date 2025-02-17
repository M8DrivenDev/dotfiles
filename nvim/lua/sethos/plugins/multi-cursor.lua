return {
	"mg979/vim-visual-multi",
	event = "VeryLazy",
	config = function()
		-- You can add any specific configuration for vim-visual-multi here
		-- For example:
		vim.g.VM_maps = {
			["Find Under"] = "<C-d>",
			["Find Subword Under"] = "<C-d>",
		}
	end,
	keys = {
		-- You can add custom keymappings here if needed
		-- For example:
		-- { "<C-n>", desc = "Start visual-multi cursor" },
	},
}
