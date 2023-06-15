local status, blankline = pcall(require, "indent-blankline")
if not status then
	return
end

blankline.setup({})
