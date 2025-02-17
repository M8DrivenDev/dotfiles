-- Define the configuration table
local config = {
	"Mofiqul/dracula.nvim",
	name = "dracula",
	priority = 1000,
	opts = {
		-- customize dracula color palette
		colors = {
			bg = "#282A36",
			fg = "#F8F8F2",
			selection = "#44475A",
			comment = "#6272A4",
			red = "#FF5555",
			orange = "#FFB86C",
			yellow = "#F1FA8C",
			green = "#50fa7b",
			purple = "#BD93F9",
			cyan = "#8BE9FD",
			pink = "#FF79C6",
			bright_red = "#FF6E6E",
			bright_green = "#69FF94",
			bright_yellow = "#FFFFA5",
			bright_blue = "#D6ACFF",
			bright_magenta = "#FF92DF",
			bright_cyan = "#A4FFFF",
			bright_white = "#FFFFFF",
			menu = "#21222C",
			visual = "#3E4452",
			gutter_fg = "#4B5263",
			nontext = "#3B4048",
			white = "#ABB2BF",
			black = "#191A21",
		},
		-- show the '~' characters after the end of buffers
		show_end_of_buffer = true, -- default false
		-- use transparent background
		transparent_bg = true, -- default false
		-- set custom lualine background color
		lualine_bg_color = "#44475a", -- default nil
		-- set italic comment
		italic_comment = true, -- default false
		-- overrides the default highlights with table see `:h synIDattr`
		overrides = {},
		-- You can use overrides as table like this
		-- overrides = {
		--   NonText = { fg = "white" }, -- set NonText fg to white
		--   NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
		--   Nothing = {} -- clear highlight of Nothing
		-- },
		-- Or you can also use it like a function to get color from theme
		-- overrides = function (colors)
		--   return {
		--     NonText = { fg = colors.white }, -- set NonText fg to white of theme
		--   }
		-- end,
	},
	config = function(_, opts)
		require("dracula").setup(ots) -- calling setup is optional
		vim.cmd.colorscheme("dracula")
	end,
}

-- Return the configuration
return config

-- -- Define the configuration table
-- local config = {
-- 	"tiagovla/tokyodark.nvim",
-- 	name = "tokyodark",
-- 	priority = 1000,
-- 	opts = {
-- 		-- Default configuration options
-- 		transparent_background = false, -- set background to transparent
-- 		gamma = 1.00, -- adjust the brightness of the theme
-- 		styles = {
-- 			comments = { italic = true }, -- style for comments
-- 			keywords = { italic = true }, -- style for keywords
-- 			identifiers = { italic = true }, -- style for identifiers
-- 			functions = {}, -- style for functions
-- 			variables = {}, -- style for variables
-- 		},
-- 		custom_highlights = {} or function(highlights, palette)
-- 			return {}
-- 		end, -- extend highlights
-- 		custom_palette = {} or function(palette)
-- 			return {}
-- 		end, -- extend palette
-- 		terminal_colors = true, -- enable terminal colors
-- 	},
-- 	config = function(_, opts)
-- 		require("tokyodark").setup(ots) -- calling setup is optional
-- 		vim.cmd.colorscheme("tokyodark")
-- 	end,
-- }
--
-- -- Return the configuration
-- return config
