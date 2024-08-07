require("bufferline").setup{
  options = {
    indicator = {
      icon = "▎",
		  style = "icon",
		},
    offsets = {
      {
        filetype = "neo-tree",
        text="NeoTree",
        separator= true,
        text_align = "center",
      },
    },
    color_icons = false,
    diagnostics = "nvim_lsp",
    separator_style = "thin", -- thin, slant, slope, thick
    themable = true,
    enforce_regular_tabs = false,
		view = "multiwindow",
    modified_icon = '●',
    show_close_icon = false,
    show_buffer_close_icons = false,
  }
}
