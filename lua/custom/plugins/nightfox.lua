return {
  'EdenEast/nightfox.nvim',
  lazy = false,
  priority = 1005,

  config = function()
    require('nightfox').load()
  end,
}
