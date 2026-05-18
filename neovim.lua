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
				light0 = "#F5F5F3",
				light1 = "#ECECE8",
				light2 = "#E5E7EB",
				light3 = "#D1D5DB",
				light4 = "#6B7280",
				dark0 = "#222222",
				dark1 = "#374151",
				dark2 = "#4B5563",
				dark3 = "#5A5A5A",
				dark4 = "#6B7280",
				red = "#CC3333",
				green = "#15803D",
				blue = "#1D4ED8",
				purple = "#9333EA",
				aqua = "#0F766E",
				orange = "#FFD54A",
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
