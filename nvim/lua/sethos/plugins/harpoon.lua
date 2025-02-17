return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({
			settings = {
				save_on_toggle = true,
				sync_on_ui_close = true,
				key = function()
					return vim.loop.cwd()
				end,
			},
		})
	end,
	keys = {
		{
			"<leader>a",
			function()
				require("harpoon"):list():add()
			end,
			desc = "Harpoon add file",
		},
		{
			"<A-e>",
			function()
				require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
			end,
			desc = "Harpoon quick menu",
		},
		{
			"<A-h>",
			function()
				require("harpoon"):list():select(1)
			end,
			desc = "Harpoon to file 1",
		},
		{
			"<A-j>",
			function()
				require("harpoon"):list():select(2)
			end,
			desc = "Harpoon to file 2",
		},
		{
			"<A-k>",
			function()
				require("harpoon"):list():select(3)
			end,
			desc = "Harpoon to file 3",
		},
		{
			"<A-l>",
			function()
				require("harpoon"):list():select(4)
			end,
			desc = "Harpoon to file 4",
		},
		{
			"<A-S-P>",
			function()
				require("harpoon"):list():prev()
			end,
			desc = "Harpoon prev file",
		},
		{
			"<A-S-N>",
			function()
				require("harpoon"):list():next()
			end,
			desc = "Harpoon next file",
		},
		{
			"<leader>r",
			function()
				require("harpoon"):list():remove()
			end,
			desc = "Harpoon delete current file",
		},
		{
			"<leader>ra",
			function()
				require("harpoon"):list():clear()
			end,
			desc = "Harpoon delete all",
		},
	},
}
