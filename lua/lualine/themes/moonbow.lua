local config = require("moonbow.config")

local colors = {
	black = "#0A0E14",
	gray = "#504945",
	white = "#f9f5d7",
	cyan = "#83a598",
	green = "#b8bb26",
	orange = "#fe8019",
	orange_1 = "#FF8F40",
	yellow = "#fabd2f",
	blue = "#50A1CE",
}

-- Follow the moonbow `styles.statusline` setting so a transparent status
-- line is actually transparent when the user asks for it.
local statusline_transparent = config.styles and config.styles.statusline == "transparent"
local bg = statusline_transparent and "NONE" or colors.black

return {
	visual = {
		a = { fg = colors.black, bg = colors.green, gui = "bold" },
		b = { fg = colors.orange, bg = bg },
		c = { fg = colors.blue, bg = bg },
	},
	replace = {
		a = { fg = colors.black, bg = colors.cyan, gui = "bold" },
		b = { fg = colors.orange, bg = bg },
		c = { fg = colors.blue, bg = bg },
	},
	inactive = {
		a = { fg = colors.black, bg = colors.yellow, gui = "bold" },
		b = { fg = colors.orange, bg = bg },
		c = { fg = colors.blue, bg = bg },
	},
	normal = {
		a = { fg = colors.black, bg = colors.orange, gui = "bold" },
		b = { fg = colors.green, bg = bg },
		c = { fg = colors.blue, bg = bg },
	},
	insert = {
		a = { fg = colors.black, bg = colors.blue, gui = "bold" },
		b = { fg = colors.orange, bg = bg },
		c = { fg = colors.blue, bg = bg },
	},
	command = {
		a = { fg = colors.black, bg = colors.orange_1, gui = "bold" },
		b = { fg = colors.orange, bg = bg },
		c = { fg = colors.blue, bg = bg },
	},
}
