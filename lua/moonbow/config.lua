local config = {
	defaults = {
		undercurl = true,
		underline = true,
		bold = true,
		italic = true,
		strikethrough = true,
		invert_selection = false,
		invert_signs = false,
		invert_tabline = false,
		invert_intend_guides = false,
		inverse = true,
		contrast = "",
		palette_overrides = {},
		overrides = {},
		dim_inactive = false,
		--- Disable the background color of the editor. Floats, sidebars and
		--- popups follow this switch by default (see `styles` below).
		transparent = false,
		--- Deprecated alias for `transparent`, kept for backwards compatibility.
		transparent_mode = false,
		--- Fine-grained background styles.
		---
		--- Supported values:
		---  * "auto"        - follow the `transparent` switch
		---  * "transparent" - always use a transparent background
		---  * "dark"        - always use the darker background (`bg1`)
		---  * "normal"      - always use the normal background (`bg0`)
		styles = {
			sidebars = "auto",
			floats = "auto",
			popups = "auto",
			--- Status line and tab line stay opaque by default. Set them to
			--- "transparent" if you want a fully transparent status line.
			statusline = "normal",
			tabline = "normal",
		},
	},
}

setmetatable(config, { __index = config.defaults })

return config
