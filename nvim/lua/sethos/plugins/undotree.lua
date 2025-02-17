return {
	"mbbill/undotree",
	cmd = "UndotreeToggle",
	keys = {
		{ "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Toggle Undotree" },
	},
	opts = {
		window_layout = 1,
		window = {
			width = 30,
			height = 15,
		},
	},
	config = function(_, opts)
		vim.g.undotree_WindowLayout = opts.window_layout
		vim.g.undotree_SplitWidth = opts.window.width
		vim.g.undotree_DiffpanelHeight = opts.window.height
		vim.g.undotree_SetFocusWhenToggle = 1
		vim.g.undotree_ShortIndicators = 1
		vim.g.undotree_DiffAutoOpen = 1
	end,
}
