function loadSave()
	-- Player Tables
	pinfo = {lv = 1, hp = 20, heldItem = 1,	wornItem = 2}
	
	pinv = {slotsinuse = none, slot1 = 0, slot2 = 0, slot3 = 0, slot4 = 0, slot5 = 0, slot6 = 0, slot7 = 0, slot8 = 0}
	
	pmonsters = {toriel = alive, papyrus = alive, undyne = alive, mettaton = alive, sans = alive, asgore = alive, flowey = alive, asrield = soulMode, asriel = asrield}
	
	metwith = {intro = true, flowey = false, toriel = false}
end

function resetSave()
	-- Player Tables Reset
	lv = 1
	hp = 20
	heldItem = 1
	wornItem = 2
	
	slotsinuse = none
	slot1 = 0
	slot2 = 0
	slot3 = 0
	slot4 = 0
	slot5 = 0
	slot6 = 0
	slot7 = 0
	slot8 = 0
	
	toriel = alive
	papyrus = alive
	undyne = alive
	mettaton = alive
	sans = alive
	asgore = alive
	flowey = alive
	asrield = soulMode
	asriel = asrield
	
	intro = false
	flowey = false
	toriel = false
	
	pname = NaN
end

-- Item Values Reference Sheet

-- '0' means no item
-- '1' means Stick
-- '2' means Bandage
-- '3' means Butterscotch Pie