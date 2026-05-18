return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		opts = {
			contrast = "soft",
			italic = {
				strings = false,
				comments = true,
				operators = false,
				folds = true,
			},
			palette_overrides = {
				light0 = "#EDE8E6",
				light1 = "#E5DED8",
				light2 = "#D8D0CA",
				light3 = "#C8C2BE",
				light4 = "#ADA5A0",
				dark0 = "#2E2A28",
				dark1 = "#3A3634",
				dark2 = "#4A4644",
				dark3 = "#5A5654",
				dark4 = "#6A6664",
				red = "#B84040",
				green = "#5C8A3C",
				yellow = "#B07818",
				blue = "#2E6BA6",
				purple = "#9A4E7A",
				aqua = "#2E8A82",
				orange = "#B07508",
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "gruvbox",
		},
	},
}
