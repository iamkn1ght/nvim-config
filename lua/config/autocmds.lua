-- ~/.config/nvim/lua/config/autocmds.lua

local group = vim.api.nvim_create_augroup("HtmlBoilerplate", { clear = true })

vim.api.nvim_create_autocmd("BufNewFile", {
  group = group,
  pattern = "*.html",
  callback = function()
    if
        vim.api.nvim_buf_line_count(0) == 1
        and vim.api.nvim_get_option_value("buftype", { buf = 0 }) == ""
        and vim.fn.getline(1) == ""
    then
      vim.api.nvim_buf_set_lines(0, 0, -1, false, {
        "<!DOCTYPE html>",
        '<html lang="de">',
        "<head>",
        '  <meta charset="UTF-8">',
        '  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
        "  <title>Document</title>",
        "</head>",
        "<body>",
        "  ",
        "</body>",
        "</html>",
      })
      vim.schedule(function()
        -- Zeile 9, Spalte 3 (hinter der Einrückung)
        pcall(vim.api.nvim_win_set_cursor, 0, { 9, 3 })
      end)
    end
  end,
})

