require 'netrw'.setup{
	-- Put your configuration here, or leave the object empty to take the default
	-- configuration.
	icons = {
		symlink = '', -- Symlink icon (directory and file)
		directory = '', -- Directory icon
		file = '', -- File icon
	},
	use_devicons = true, -- Uses nvim-web-devicons if true, otherwise use the file icon specified above
	mappings = {}, -- Custom key mappings
}

require'netrw'.setup{
	-- your config ...

	-- Define normal mode mapping
	mappings = {
		['p'] = function(payload)
			-- Payload is an object describing the node under the cursor, the object
			-- has the following keys:
			-- - dir: the current netrw directory (vim.b.netrw_curdir)
			-- - node: the name of the file or directory under the cursor
			-- - link: the referenced file if the node under the cursor is a symlink
			-- - extension: the file extension if the node under the cursor is a file
			-- - type: the type of node under the cursor (0 = dir, 1 = file, 2 = symlink)
			print(vim.inspect(payload))
		end,
		-- more mappings ...
	}
	-- your config ...
}
