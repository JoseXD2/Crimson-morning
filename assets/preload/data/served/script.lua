function onStepHit()
	if curStep == 176 then
	removeLuaSprite('mountains')
	removeLuaSprite('sky')
	removeLuaSprite('ground')
	setProperty('sky2.visible', true);		
	setProperty('ground2.visible', true);
	end
	if curStep == 1070 then
	setProperty('bus.visible', true);
	doTweenX('showup','bus', 150, 0.5, 'cubeOut')
	end
	if curStep > 1072 and curStep < 1094 then
	triggerEvent('Screen Shake', '0.25, 0.012', '0.1, 0.008')
	end
	if curStep > 1099 and curStep < 1123 then
	triggerEvent('Screen Shake', '0.25, 0.012', '0.1, 0.008')
	end
	if curStep > 1131 and curStep < 1154 then
	triggerEvent('Screen Shake', '0.25, 0.012', '0.1, 0.008')
	end
	if curStep == 1072 then
    doTweenZoom('asfyte', 'camGame', 0.3, 2, 'cubeOut')
    setProperty('defaultCamZoom', 0.3)
	removeLuaSprite('bus')
	removeLuaSprite('ground2')
	removeLuaSprite('sky2')
	setProperty('platforms.visible', true);
	setProperty('platforms2.visible', true);
	end
end
			
function onGameOver()
    setProperty('health', -500);
    math.randomseed(os.clock()/4.0)
    local num = math.random(1,6)
    local name = tostring(num)
    playSound(name, 1, 'deathquote')
end