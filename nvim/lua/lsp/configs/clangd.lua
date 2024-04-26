local cmd = { "clangd" }

if vim.fn.has("win64") then
  cmd = { "/Program Files/LLVM/bin/clangd" }
end

return {
  cmd = cmd
}