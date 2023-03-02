local g = vim.g
local opt = vim.opt

opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false

opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false

opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

g.user42 = 'revieira'
g.mail42 = 'revieira@student.42sp.org.br'

opt.fileencoding = 'utf-8'
opt.termguicolors = true

opt.scrolloff = 5

opt.updatetime = 50

opt.colorcolumn = "80"

