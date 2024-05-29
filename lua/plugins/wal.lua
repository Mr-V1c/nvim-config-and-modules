return
{
	'dylanaraps/wal.vim',
	lazy= false,
	priority= 1000,
	config = function()
		vim.opt.termguicolors=false
		vim.cmd.colorscheme "wal"
		end
}
