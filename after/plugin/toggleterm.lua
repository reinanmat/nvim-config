local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup({
	size = function(term)
		if term.direction == "horizontal" then
			return 20
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.4
		end
	end,
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
	shading_factor = 1, -- the percentage by which to lighten terminal background, default: -30 (gets multiplied by -3 if background is light)
	start_in_insert = true,
	insert_mappings = true, -- whether or not the open mapping applies in insert mode
	persist_size = true,
	direction = 'float', -- | 'horizontal' | 'vertical' | 'tab' | 'float',
	close_on_exit = true, -- close the terminal window when the process exits
	shell = vim.o.shell, -- change the default shell
	float_opts = {
		border = 'curved', -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		}
	},
})
