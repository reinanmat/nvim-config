function ColorMyPencils(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	require("rose-pine").setup({
		disable_background = true,
		disable_float_background = true,
	})
	color = "rose-pine"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
