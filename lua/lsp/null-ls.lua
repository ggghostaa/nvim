local status, null_ls = pcall(require, "null-ls")
if not status then
  vim.notify("没有找到 null-ls")
  return
end

       local formatting = null_ls.builtins.formatting
-- 解决warning
-- multiple different client offset_encodings detected for buff, this is not supported yet
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.offsetEncoding = { "utf-16" }
require("lspconfig").clangd.setup({ capabilities = capabilities })

null_ls.setup({
   
  debug = false,
  sources = {
   
    -- Formatting ---------------------
    --  brew install shfmt
    formatting.shfmt,
    -- StyLua
    formatting.stylua,
    -- clang-format
    -- -- brew install clang-format
    formatting.clang_format,
    -- frontend
    formatting.prettier.with({
    -- 只比默认配置少了 markdown
      filetypes = {
        "c",
        "cpp",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "vue",
        "css",
        "scss",
        "less",
        "html",
        "json",
        "yaml",
        "graphql",
      },
      prefer_local = "node_modules/.bin",
    }),
    -- formatting.fixjson,
    --formatting.black.with({
    --extra_args = {
    --"--fast" } }),
  },
})

