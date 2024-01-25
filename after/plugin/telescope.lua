require("telescope").setup({
  pickers = {
    find_files = {
      hidden = true,
      file_ignore_patterns = { ".git/", "node_modules", ".cache", "%.o", "%.a", "%.out", "%.class",
        "%.pdf", "%.mkv", "%.mp4", "%.zip" },
    }
  }
})
