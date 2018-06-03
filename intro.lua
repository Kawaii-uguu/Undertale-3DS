function introLoad()

  --	introMus = love.audio.newSource('mus/onceuponatime.wav')
  --		introMus:play()
  
  longago = {}
  war = {}
  battle = {}
  battleglow = {}
  mt_ebott = {}
  legendssay = {}
  stare = {}
  trip = {}
  fall = {}
  chara_t = {}
  chara_b = {}

  longago.image = love.graphics.newImage('intro/longago.png')
  war.image = love.graphics.newImage('intro/war.png')
  battle.image = love.graphics.newImage('intro/battle.png')
  battleglow.image = love.graphics.newImage('intro/battle_glow.png')
  mt_ebott.image = love.graphics.newImage('intro/mt_ebott.png')
  legendssay.image = love.graphics.newImage('intro/legendssay.png')
  stare.image = love.graphics.newImage('intro/stare.png')
  trip.image = love.graphics.newImage('intro/trip.png')
  fall.image = love.graphics.newImage('intro/fall.png')
  chara_b.image = love.graphics.newImage('intro/chara2.png')
  chara_t.image = love.graphics.newImage('intro/chara1.png')

  introCurrent = 1
  timerTil = 10

  love.graphics.setScreen('top')

  chara_t.x = (love.graphics.getWidth() / 2) - (chara_t.image:getWidth() / 2)
  chara_t.y = (love.graphics.getHeight() / 2) - (chara_t.image:getHeight() / 2)

  longago.x = (love.graphics.getWidth() / 2) - (longago.image:getWidth() / 2)
  longago.y = (love.graphics.getHeight() / 2) - (longago.image:getHeight() / 2)

  war.x = (love.graphics.getWidth() / 2) - (war.image:getWidth() / 2)
  war.y = (love.graphics.getHeight() / 2) - (war.image:getHeight() / 2)

  battle.x = (love.graphics.getWidth() / 2) - (battle.image:getWidth() / 2)
  battle.y = (love.graphics.getHeight() / 2) - (battle.image:getHeight() / 2)

  battleglow.x = (love.graphics.getWidth() / 2) - (battleglow.image:getWidth() / 2)
  battleglow.y = (love.graphics.getHeight() / 2) - (battleglow.image:getHeight() / 2)

  mt_ebott.x = (love.graphics.getWidth() / 2) - (mt_ebott.image:getWidth() / 2)
  mt_ebott.y = (love.graphics.getHeight() / 2) - (mt_ebott.image:getHeight() / 2)

  legendssay.x = (love.graphics.getWidth() / 2) - (legendssay.image:getWidth() / 2)
  legendssay.y = (love.graphics.getHeight() / 2) - (legendssay.image:getHeight() / 2)

  stare.x = (love.graphics.getWidth() / 2) - (stare.image:getWidth() / 2)
  stare.y = (love.graphics.getHeight() / 2) - (stare.image:getHeight() / 2)

  trip.x = (love.graphics.getWidth() / 2) - (trip.image:getWidth() / 2)
  trip.y = (love.graphics.getHeight() / 2) - (trip.image:getHeight() / 2)

  fall.x = (love.graphics.getWidth() / 2) - (fall.image:getWidth() / 2)
  fall.y = (love.graphics.getHeight() / 2) - (fall.image:getHeight() / 2)

  love.graphics.setScreen('bottom')

  chara_b.x = (love.graphics.getWidth() / 2) - (chara_b.image:getWidth() / 2)
  chara_b.y = (love.graphics.getHeight() / 2) - (chara_b.image:getHeight() / 2)

end

function introDraw()

  love.graphics.setScreen('top')

  if introCurrent == 0 then

    introCurrent = 1

  end

  if introCurrent == 1 then

    introLongago()

  end

  if introCurrent == 2 then

    introWar()

  end

  if introCurrent == 3 then

    introBattle()

    timerTil = 7

  end

  if introCurrent == 4 then

    introBattle_glow()

    timerTil = 3

  end

  if introCurrent == 5 then

    introMt_ebott()

    timerTil = 10

  end

  if introCurrent == 6 then

    introLegendssay()

  end

  if introCurrent == 7 then

    introStare()

  end

  if introCurrent == 8 then

    introTrip()

  end

  if introCurrent == 9 then

    introFall()

  end

  if introCurrent == 10 then

    introChara()

  end

  if introCurrent == 11 then

    state.isintro = false

    state.issplash = true

  end

end

function introUpdate()

  --	timer:after(timerTil, function() introCurrent = introCurrent + 1 end)

  if love.keyboard.isDown("a") then
    introCurrent = introCurrent + 1
  end

  if love.keyboard.isDown("b") then
    introCurrent = introCurrent - 1
  end

  if introCurrent == -1 then
    introCurrent = 1
  end

  --	timer:update(dt)

end

function introLongago()
  love.graphics.rectangle('fill', longago.x, longago.y, 400, 240)
  love.graphics.draw(longago.image, longago.x, longago.y)
  
  love.graphics.setScreen('bottom')
  
  love.graphics.print("Long ago, two races", 80, 80)
  love.graphics.print("ruled over Earth:", 80, 110)
  love.graphics.print("HUMANS and MONSTERS.", 80, 140)
  
end

function introWar()
  love.graphics.rectangle('fill', war.x, war.y, 400, 240)
  love.graphics.draw(war.image, war.x, war.y)
end

function introBattle()
  love.graphics.rectangle('fill', battle.x, battle.y, 400, 240)
  love.graphics.draw(battle.image, battle.x, battle.y)
end

function introBattle_glow()
  love.graphics.rectangle('fill', battleglow.x, battleglow.y, 400, 240)
  love.graphics.draw(battleglow.image, battleglow.x, battleglow.y)
end

function introMt_ebott()
  love.graphics.rectangle('fill', mt_ebott.x, mt_ebott.y, 400, 240)
  love.graphics.draw(mt_ebott.image, mt_ebott.x, mt_ebott.y)
end

function introLegendssay()
  love.graphics.rectangle('fill', legendssay.x, legendssay.y, 400, 240)
  love.graphics.draw(legendssay.image, legendssay.x, legendssay.y)
end

function introStare()
  love.graphics.rectangle('fill', stare.x, stare.y, 400, 240)
  love.graphics.draw(stare.image, stare.x, stare.y)
end

function introTrip()
  love.graphics.rectangle('fill', trip.x, trip.y, 400, 240)
  love.graphics.draw(trip.image, trip.x, trip.y)
end

function introFall()
  love.graphics.rectangle('fill', fall.x, fall.y, 400, 240)
  love.graphics.draw(fall.image, fall.x, fall.y)
end

function introChara()

  love.graphics.setScreen('top')

  love.graphics.rectangle('fill', chara_t.x, chara_t.y, 400, 240)
  love.graphics.draw(chara_t.image, chara_t.x, chara_t.y)

  love.graphics.setScreen('bottom')

  love.graphics.rectangle('fill', chara_b.x, chara_b.y, 400, 240)
  love.graphics.draw(chara_b.image, chara_b.x, chara_b.y)

end