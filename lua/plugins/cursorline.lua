local status, cl = pcall(require, 'nvim-cursorline')

if (not status) then
  return
end

cl.setup {
  cursorline = {
    enable = true,
    timeout = 1000,
    number = true,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}
