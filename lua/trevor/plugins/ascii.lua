return {
  "MaximilianLloyd/ascii.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("ascii").setup()
  end,
}