-- import nvim-autopairs safely
local bufferline_setup, bufferline = pcall(require, "bufferline")
if not bufferline_setup then
	return
end

-- configure autopairs
bufferline.setup({})
