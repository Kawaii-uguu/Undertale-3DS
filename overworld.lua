function overworld.load()

	slot = {currentnumber = 1}

end

function overworld.draw()

	love.graphics.setScreen('bottom')

if menu.state == idle then

	love.graphics.rectangle('fill', idle.x, idle.y, 300, 48)
	love.graphics.draw(idle.image, idle.x, idle.y)
end	

if menu.state == using then

	love.graphics.rectangle('fill', using.x, using.y, 300, 48)
	love.graphics.draw(using.image, using.x, using.y)

for i = 1, pinv.slotsinuse do
	love.graphics.setColor(.5, .5, .5, 1) --Sets default slot color
        if i > pinv.slotsinuse then --Sets inactive slot color
            love.graphics.setColor(.25, .25, .25, 1)
        end
        if slot.currentnumber == i then --Sets highlighted slot color
            love.graphics.setColor(.75, .75, .25, 1)
        end
        love.graphics.rectangle("fill", spacing + (i-1)*(width + spacing), spacing, width, width) --Draw slot
       
        --This is just the make-shift item representation via colored balls
        love.graphics.setColor(.75, .1, 0, 1)
        if i <= pinv.slotsinuse then
            love.graphics.setColor(.1, .75, 0, 1)
        end
        love.graphics.circle("fill", spacing + (i-1)*(width + spacing)+width/2, spacing+width/2, width/4, 32)
        love.graphics.setLineWidth(2)
        if slot.currentnumber == i then
            love.graphics.setColor(.3, 1, 0, 1)
        end
        love.graphics.circle("line", spacing + (i-1)*(width + spacing)+width/2, spacing+width/2, width/4, 32)
       
        if slot.currentnumber == i then --Highlight slot
            love.graphics.setColor(.25, .25, 0, 1)
            love.graphics.setLineWidth(5)
            love.graphics.rectangle("line", spacing + (i-1)*(width + spacing), spacing, width, width)
	end
end
	end
end
	
function overworld.update
	
if pinv.slot1 == 0 then

	pinv.slotsinuse = none
	
elseif pinv.slot2 == 0 then

	pinv.slotsinuse = 1

elseif pinv.slot3 == 0 then

	pinv.slotsinuse = 2

elseif pinv.slot4 == 0 then

	pinv.slotsinuse = 3

elseif pinv.slot5 == 0 then

	pinv.slotsinuse = 4
	
elseif pinv.slot6 == 0 then

	pinv.slotsinuse = 5

elseif pinv.slot7 == 0 then

	pinv.slotsinuse = 6

elseif pinv.slot8 == 0 then

	pinv.slotsinuse = 7

elseif pinv.slot8 >= 1 then

	pinv.slotsinuse = 8
	
end

	
if love.keyboard.isDown("down") or love.keyboard.isDown("cpaddown") then
	
	slot.currentnumber = slot.currentnumber + 1

elseif love.keyboard.isDown("up") or love.keyboard.isDown("cpadup") then
	
	slot.currentnumber = slot.currentnumber - 1
	
end	



if slot.currentnumber >= pinv.slotsinuse and love.keyboard.isDown("down") or love.keyboard.isDown("cpaddown") then

	slot.currentnumber = 1
	
elseif slot.currentnumber <= pinv.slotsinuse and love.keyboard.isDown("up") or love.keyboard.isDown("cpadup") then

	slot.currentnumber = pinv.slotsinuse
	
		end
	end
