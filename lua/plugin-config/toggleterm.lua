local status, toggleterm = pcall(require, "toggleterm")
if not status then
  vim.notify("没有找到tooggleterm")
  return
end

toggleterm.setup({
    open_mapping = [[<c-\>]],
    -- 打开新终端后自动进入插入模式
    start_in_insert = true,
    -- 在当前buffer的浮动窗口打开
    direction = 'float',
})
