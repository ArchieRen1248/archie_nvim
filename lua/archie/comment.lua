local status, comment = pcall(require, 'mini.comment')
if not status then
  print("mini.comment cannot be loaded!")
  return
end
comment.setup()
