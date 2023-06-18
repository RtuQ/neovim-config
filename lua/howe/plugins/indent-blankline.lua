local status, blankline = pcall(require, "indent-blankline")
if not status then
	return
end

blankline.setup({
	char = "┊",
	show_trailing_blankline_indent = false,
})
