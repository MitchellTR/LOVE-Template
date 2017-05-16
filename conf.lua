function love.conf(t)
  t.title = "Untitled Prototype"
  t.version = "0.10.2"

  t.window.width = 1024
  t.window.height = 768
  --t.window.highdpi = true

  if love._os == "iOS" then
    t.window.borderless = true
  end
end
