return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = function(term)
        if term.direction == 'horizontal' then
          return 20
        elseif term.direction == 'vertical' then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<C-t>]],
      hide_numbers = true,
      shading_factor = 2,
      direction = 'horizontal',
      float_opts = {
        border = 'curved',
        winblend = 0,
      },
    }
  end,
}
