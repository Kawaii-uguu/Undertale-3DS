function love.load()

  require("intro")
  require("maps/ruins")
--require("overworld")
  require("save")
  require("undertale")
  require("sound")
  
  loadSave()
  introLoad()
  buttonAdjust()
  undertaleLoad()
--loadAudio

  
  -- Enables 3D mode.
  -- love.graphics.set3D(true)

  math.randomseed(os.time())

  font = love.graphics.newFont(calbri)
  
  -- Maps:

  love.graphics.setScreen('top')

  -- Ruins

  ruins1.x = (love.graphics.getWidth() / 2) - (ruins1.image:getWidth() / 2)
  ruins1.y = (love.graphics.getHeight() / 2) - (ruins1.image:getHeight() / 2)

  love.graphics.setBackgroundColor(0, 0, 0)

end

function love.draw() 
  
  if state == intro then

    introDraw()

  end

  if state == overworld then

    love.graphics.setScreen('top')

    -- Draws the framerate
--    love.graphics.setColor(255, 255, 255)
--    love.graphics.rectangle('fill', 10, 15, font:getWidth('FPS: ' .. love.timer.getFPS()) + 10, font:getHeight() + 3)
--    love.graphics.setColor(35, 31, 32)
--    love.graphics.setFont(font)
--    love.graphics.print('FPS: ' .. love.timer.getFPS(), 15, 15)

    love.graphics.setScreen('bottom')

    love.graphics.rectangle('fill', controls.x, controls.y, 300, 48)
    love.graphics.draw(controls.image, controls.x, controls.y)

    if map == ruins then

      love.graphics.setScreen('top')

      love.graphics.rectangle('fill', ruins1.x, ruins1.y, 1120, 560)
      love.graphics.draw(ruins1.image, ruins1.x, ruins1.y)

      -- Draws the framerate
      love.graphics.setColor(255, 255, 255)
      love.graphics.rectangle('fill', 10, 15, font:getWidth('FPS: ' .. love.timer.getFPS()) + 10, font:getHeight() + 3)
      love.graphics.setColor(35, 31, 32)
      love.graphics.setFont(font)
      love.graphics.print('FPS: ' .. love.timer.getFPS(), 15, 15)

      love.graphics.setScreen('bottom')

      love.graphics.rectangle('fill', controls.x, controls.y, 300, 48)
      love.graphics.draw(controls.image, controls.x, controls.y)

    end

  end

  if state == splash then
    --draw the splash screen

    -- Start drawing to the top screen
    love.graphics.setScreen('top')

    -- Draws controls splashscreen
    love.graphics.rectangle('fill', controls.x, controls.y, 300, 48)
    love.graphics.draw(controls.image, controls.x, controls.y)

    -- Draws the framerate
    love.graphics.setColor(255, 255, 255)
    love.graphics.rectangle('fill', 10, 15, font:getWidth('FPS: ' .. love.timer.getFPS()) + 10, font:getHeight() + 3)
    love.graphics.setColor(35, 31, 32)
    love.graphics.setFont(font)
    love.graphics.print('FPS: ' .. love.timer.getFPS(), 15, 15)

    love.graphics.setColor(255, 255, 255)

  end

  if state == mistakeCheck then

    love.graphics.setScreen('top')

    -- Draws the framerate
    love.graphics.setColor(255, 255, 255)
    love.graphics.rectangle('fill', 10, 15, font:getWidth('FPS: ' .. love.timer.getFPS()) + 10, font:getHeight() + 3)
    love.graphics.setColor(35, 31, 32)
    love.graphics.setFont(font)
    love.graphics.print('FPS: ' .. love.timer.getFPS(), 15, 15)

    love.graphics.setColor(255, 255, 255)

    -- Draws controls splashscreen
    love.graphics.rectangle('fill', warning.x, warning.y, 260, 240)
    love.graphics.draw(warning.image, warning.x, warning.y)

    love.graphics.setScreen('bottom')

    love.graphics.rectangle('fill', warningb.x, warningb.y, 320, 240)
    love.graphics.draw(warningb.image, warningb.x, warningb.y)

    if buttonstate.left == true then

      love.graphics.rectangle('fill', warningleft.x, warningleft.y, 320, 240)
      love.graphics.draw(warningleft.image, warningleft.x, warningleft.y)

    end

    if buttonstate.right == true then

      love.graphics.rectangle('fill', warningright.x, warningright.y, 320, 240)
      love.graphics.draw(warningright.image, warningright.x, warningright.y)

    end

  end

  if state == menu then

    -- Start drawing to the top screen
    love.graphics.setScreen('top')

    -- Draws the framerate
    love.graphics.setColor(255, 255, 255)
    love.graphics.rectangle('fill', 10, 15, font:getWidth('FPS: ' .. love.timer.getFPS()) + 10, font:getHeight() + 3)
    love.graphics.setColor(35, 31, 32)
    love.graphics.setFont(font)
    love.graphics.print('FPS: ' .. love.timer.getFPS(), 15, 15)

    love.graphics.setColor(255, 255, 255)

    love.graphics.rectangle('fill', logo.x, logo.y, 300, 48)
    love.graphics.draw(logo.image, logo.x, logo.y)

    -- Start drawing to the bottom screen
    love.graphics.setScreen('bottom')

    love.graphics.print(pinfo.lv, 131, 93)
    love.graphics.setFont(font)

    love.graphics.rectangle('fill', menu.x, menu.y, 320, 240)
    love.graphics.draw(menu.image, menu.x, menu.y)

    if buttonstate.left == true then

      love.graphics.rectangle('fill', left.x, left.y, 320, 240)
      love.graphics.draw(left.image, left.x, left.y)

    elseif buttonstate.right == true then

      love.graphics.rectangle('fill', right.x, right.y, 320, 240)
      love.graphics.draw(right.image, right.x, right.y)
    end
  end

end

function love.update(dt)

  if state == intro then
  
    introUpdate()

  end

  if state == overworld then

    if map == ruins1 then


    end
  end

  logo.y = 50 + math.cos(love.timer.getTime() * 1) * 8

  if state == splash then

    if love.keyboard.isDown("a") or love.keyboard.isDown("b") then
      state = menu
    end

    function love.mousepressed(splashx, splashy, button)
      state = menu
    end

  end

  if state == menu then

    if love.keyboard.isDown("right") or love.keyboard.isDown("cpadright") then
      buttonstate = right
    end

    if love.keyboard.isDown("left") or love.keyboard.isDown("cpadleft") then
      buttonstate = left
    end

    if buttonstate == left and love.keyboard.isDown("a")then
      state = overworld
    end

    if buttonstate == right and love.keyboard.isDown("a") then
      state = mistakeCheck
      buttonstate = nil
    end

    function love.mousepressed(mousex, mousey, button)
      if mousex >= buttonleftx and mousex <= buttonleftx + 83 and mousey >= buttonlefty and mousey <= buttonlefty + 31 then
	  
        state = overworld

      elseif mousex >= buttonrightx and mousex <= buttonrightx + 94 and mousey >= buttonrighty and mousey <= buttonrighty + 31 then

        state = mistakeCheck

      end
    end

  end

  if state == mistakeCheck then

    if love.keyboard.isDown("a") and buttonstate == left then

    resetSave()
    state = intro
    buttonstate = nil

  end

  if love.keyboard.isDown("a") and buttonstate == right then

    state = menu
    buttonstate = nil

  end

  
    if love.keyboard.isDown("b") then
      state = menu
    end

    if love.keyboard.isDown("right") or love.keyboard.isDown("cpadright") then
      buttonstate = right
    end

    if love.keyboard.isDown("left") or love.keyboard.isDown("cpadleft") then
      buttonstate = left
    end

    function love.mousepressed(mousex, mousey, button)

      if mousex >= restartleftx and mousex <= restartleftx + 51 and mousey >= restartlefty and mousey <= restartlefty + 36 then

        state = menu
        buttonstate = left

      elseif mousex >= restartrightx and mousex <= restartrightx + 38 and mousey >= restartrighty and mousey <= restartrighty + 36 then

        resetSave()
        state = intro
        buttonstate = right

      end
    end

  end

end

  function love.keypressed(key)

    if key == 'select' then
      love.event.quit()
    end
  end

  function love.quit()

    exitSound:play()
	mus_menu:stop()
	
  end