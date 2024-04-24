require("bufferline").setup{
  options = {
    offsets = {
      {
        filetype = "neo-tree",
        text="NeoTree",
        separator= false,
        text_align = "center"
      }
    },
    diagnostics = "nvim_lsp",
    separator_style = {"", ""},
    modified_icon = '●',
    show_close_icon = false,
    show_buffer_close_icons = false,
  }
}
