function undertaleLoad()

  love.graphics.setScreen('top')

  Timer = require "timer"
  buttonstate = {left = false, right = false}
  state = intro
  controls = {}
  menu = {}
  logo = {} -- Creates a table to hold variables for the logo (x, y, image etc.)
  potionText = {} -- Creates a table to hold variables for the text
  right = {}
  left = {}
  font = love.graphics.newFont() -- Creates a new font, when no arguments are given it uses the default font
  warning = {}
  warningb = {}
  warningleft = {}
  warningright = {}
  ruins1 = {}
  idle = {}
  using = {}
  chara_b = {}
  chara_t = {}

  map = nil

  love.graphics.setScreen('top')
 
  -- Loads images from filepaths
  controls.image = love.graphics.newImage('splashscreen/controls.png')
  logo.image = love.graphics.newImage('menu/logo.png')
  menu.image = love.graphics.newImage('menu/menu.png')
  right.image = love.graphics.newImage('menu/cont_y_rest.png')
  left.image = love.graphics.newImage('menu/ycont_rest.png')

  warning.image = love.graphics.newImage('reset/warning.png')
  warningb.image = love.graphics.newImage('reset/warning_b.png')
  warningleft.image = love.graphics.newImage('reset/y_warning_b.png')
  warningright.image = love.graphics.newImage('reset/n_warning_b.png')

  idle.image = love.graphics.newImage('overworld/ign.png')
  using.image = love.graphics.newImage('overworld/ingame.png')

  -- Maps:

  love.graphics.setScreen('top')
  
  -- Ruins

  ruins1.image = love.graphics.newImage('maps/ruins1.png')

  -- Sets the logo position to the center of the screen, using love.graphics.getWidth()/getHeight()
  -- and Image:getWidth()/getHeight()
  logo.x = (love.graphics.getWidth() / 2) - (logo.image:getWidth() / 2)
  logo.y = (love.graphics.getHeight() / 2) - (logo.image:getHeight() / 2)

  controls.x = (love.graphics.getWidth() / 2) - (controls.image:getWidth() / 2)
  controls.y = (love.graphics.getHeight() / 2) - (controls.image:getHeight() / 2)

  warning.x = (love.graphics.getWidth() / 2) - (warning.image:getWidth() / 2)
  warning.y = (love.graphics.getHeight() / 2) - (warning.image:getHeight() / 2)

  love.graphics.setScreen('bottom')

  menu.x = (love.graphics.getWidth() / 2) - (menu.image:getWidth() / 2)
  menu.y = (love.graphics.getHeight() / 2) - (menu.image:getHeight() / 2)

  left.x = (love.graphics.getWidth() / 2) - (left.image:getWidth() / 2)
  left.y = (love.graphics.getHeight() / 2) - (left.image:getHeight() / 2)

  right.x = (love.graphics.getWidth() / 2) - (right.image:getWidth() / 2)
  right.y = (love.graphics.getHeight() / 2) - (right.image:getHeight() / 2)

  warningb.x = (love.graphics.getWidth() / 2) - (warningb.image:getWidth() / 2)
  warningb.y = (love.graphics.getHeight() / 2) - (warningb.image:getHeight() / 2)

  warningleft.x = (love.graphics.getWidth() / 2) - (warningleft.image:getWidth() / 2)
  warningleft.y = (love.graphics.getHeight() / 2) - (warningleft.image:getHeight() / 2)

  warningright.x = (love.graphics.getWidth() / 2) - (warningright.image:getWidth() / 2)
  warningright.y = (love.graphics.getHeight() / 2) - (warningright.image:getHeight() / 2)

  using.x = (love.graphics.getWidth() / 2) - (using.image:getWidth() / 2)
  using.y = (love.graphics.getHeight() / 2) - (using.image:getHeight() / 2)

  idle.x = (love.graphics.getWidth() / 2) - (idle.image:getWidth() / 2)
  idle.y = (love.graphics.getHeight() / 2) - (idle.image:getHeight() / 2)
  
  end
  
function buttonAdjust()

  buttonleftx = 53
  buttonlefty = 123

  buttonrightx = 180
  buttonrighty = 123

  restartleftx = 70
  restartlefty = 135

  restartrightx = 218
  restartrighty = 135

  splashx = 320
  splashy = 240
  
  end