require("telescope").setup({
  pickers = {
    find_files = {
      hidden = true,
      file_ignore_patterns = { ".git/", ".cache", "%.o", "%.a", "%.out", "%.class",
        "%.pdf", "%.mkv", "%.mp4", "%.zip" },
    }
  }
})
