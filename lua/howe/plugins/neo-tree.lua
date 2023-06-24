-- import neo-tree plugin safely
local setup, neotree = pcall(require, "neo-tree")
if not setup then
	return
end

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
neotree.setup({
	close_if_last_window = true,
	sources = { "filesystem", "buffers", "git_status", "document_symbols" },
	open_files_do_not_replace_types = { "terminal", "Trouble", "qf", "Outline" },
	filesystem = {
		bind_to_cwd = false,
		follow_current_file = true,
		use_libuv_file_watcher = true,
		filtered_items = {
			hide_dotfiles = false,
			hide_gitignored = false,
			hide_by_name = {
				".git",
			},
		},
		window = {
			mapping_options = {
				noremap = true,
				nowait = true,
			},
			mappings = {
				["o"] = { command = "open", nowait = true },
				["t"] = "open_tab_drop",
			},
		},
	},
	buffers = {
		follow_current_file = true,
	},
})
