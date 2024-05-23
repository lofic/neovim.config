-- file explorer tree style
vim.cmd("let g:netrw_liststyle = 3")

-- misc.
vim.o.wrap = false
vim.o.textwidth = 100

-- set a ruler to warn of long lines
vim.cmd([[call matchadd('ColorColumn', '\%81v', 100)]])

-- list trailing spaces
vim.opt.list = true
vim.opt.listchars = "tab:>·,trail:█"

-- last carriage return
vim.o.fixendofline = true

-- tabs and indentation
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- file format - force unix
vim.o.fileformat = "unix"

-- lang
vim.cmd("language en_US.UTF-8")
vim.o.langmenu = "en_US.UTF-8"

-- no beep no flash
vim.o.errorbells = false

-- no backup files
vim.o.backupcopy = "no"

-- appearance
vim.o.termguicolors = true
vim.o.background = "light"

-- no splash screen
vim.o.shortmess = "filnxtToOSI"

-- clipboard - use system clipboard as defaut register
vim.opt.clipboard:append("unnamedplus")

-- allows unsaved buffers to be navigated away from
vim.opt.hidden = true
