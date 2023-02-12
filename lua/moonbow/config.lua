local config = {
	defaults = {
		overrides = {},
	},
}

setmetatable(config, { __index = config.defaults })

return config
