local xx = 420;
local yy = 350;
local xx2 = 820;
local yy2 = 550;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;
local idk = 0.85;

function onCreate()
addCharacterToList('normality', 'dad')
addCharacterToList('DOOMSDAY_SQUIDWARD', 'dad')
addCharacterToList('normality2', 'dad')

	-- background shit
	makeLuaSprite('room', 'background/bedroom/room', -700,-400);
	addLuaSprite('room', false); 
	scaleObject('room', 2, 2)--x2

    setProperty('cameraSpeed', 1.5)

	makeLuaSprite('suicide', 'background/bedroom/suicide', -700,-400);
	addLuaSprite('suicide', false);
	setProperty('suicide.visible', false);	 --x2
	scaleObject('suicide', 2, 2)
	
	-- stage
	makeLuaSprite('stagefb', 'background/bedroom/doomsdayfb/stagefb', -890, -200)
	addLuaSprite('stagefb', false)
	setLuaSpriteScrollFactor('stagefb', 1, 1) --x2
	setProperty('stagefb.visible', false);	
	scaleObject('stagefb', 2, 2)

	makeLuaSprite('curtainstage', 'background/bedroom/doomsdayfb/curtainstage', -890, -450)
	addLuaSprite('curtainstage', false)
	setLuaSpriteScrollFactor('curtainstage', 1, 1)
	setProperty('curtainstage.visible', false);	 --x2
	scaleObject('curtainstage', 2, 2.3)
	
	-- fire
	makeLuaSprite('floor', 'background/bedroom/bedroomf/floor', -700,-400);
	addLuaSprite('floor',false);
	setProperty('floor.visible', false);	--x2	
	scaleObject('floor', 2, 2)
	
	makeLuaSprite('firefront', 'background/bedroom/bedroomf/firefront', -700,-400);
	addLuaSprite('firefront', true); --x4
	setProperty('firefront.visible', false);
	scaleObject('firefront', 4, 4)	
	
	-- blood
    makeLuaSprite('blood', 'background/bedroom/blood', 0, 0);
	addLuaSprite('blood', true);
	setProperty('blood.visible', false);	
	setObjectCamera('blood', 'hud');
	
	-- stage 2 !
	makeAnimatedLuaSprite('BLOODYTHING','background/bedroom/doomsdayfb2/DoomsdayBack', -890, -400)
	scaleLuaSprite('BLOODYTHING', 4, 4);
	addAnimationByPrefix('BLOODYTHING','Tearflow', 'Tearflow', 24, true)
	addLuaSprite('BLOODYTHING', false);
	setProperty('BLOODYTHING.visible', false);
	
	makeLuaSprite('redlight', 'background/bedroom/doomsdayfb2/redlight', -890, -400)
	addLuaSprite('redlight', false)
	setLuaSpriteScrollFactor('redlight', 1, 1)
	setProperty('redlight.visible', false);	
	
	makeLuaSprite('stagefx', 'background/bedroom/doomsdayfb2/stage', -890, -200)
	addLuaSprite('stagefx', false)
	setLuaSpriteScrollFactor('stagefx', 1, 1)
	scaleObject('stagefx', 2, 2)	
	setProperty('stagefx.visible', false);		

	makeLuaSprite('Xcurtian', 'background/bedroom/doomsdayfb2/frontcurtains', -890, -450)
	addLuaSprite('Xcurtian', false) -- x2
	setLuaSpriteScrollFactor('Xcurtian', 1, 1)
	scaleObject('Xcurtian', 2, 2.4)	
	setProperty('Xcurtian.visible', false);	

	makeAnimatedLuaSprite('debris','background/bedroom/doomsdayfb2/debris', -890, -400)
	scaleLuaSprite('debris', 1, 1);
	addAnimationByPrefix('debris','fallingdebris', 'fallingdebris', 24, true)
	addLuaSprite('debris', true);
	setProperty('debris.visible', false);
	scaleObject('debris', 5.2, 5.2)
	
	-- red mist
	makeLuaSprite('skyx', 'background/bedroom/redmist/sky', -700,-400);
	addLuaSprite('skyx', false);
	setProperty('skyx.visible', false);	--x2	
	scaleObject('skyx', 2, 2)		
	
	makeLuaSprite('roomx', 'background/bedroom/redmist/room', -700,-400);
	addLuaSprite('roomx', false);
	setProperty('roomx.visible', false);	 --x2
	scaleObject('roomx', 2, 2)	
	
	makeLuaSprite('shadingx', 'background/bedroom/redmist/shading', -700,-400);
	addLuaSprite('shadingx', false);
	setProperty('shadingx.visible', false);	 --x4
	scaleObject('shadingx', 4, 4)	
	
end


function onStepHit()
	if curStep == 1055 then
	idk = 0.5;
	setProperty('boyfriendGroup.visible', false);
	setProperty('gfGroup.visible', false);
    triggerEvent('Change Character', '1', 'normality')
    setProperty('cameraSpeed', 1)
	xx = 350;
	ofs = 0;
	setProperty('stagefb.visible', true);
	setProperty('curtainstage.visible', true);
	setProperty('bbcurtian.visible', true);
	setProperty('curtianbig.visible', true);
	setProperty('FUCKINGCHAIR.visible', true);
	setProperty('people.visible', true);
	doTweenZoom('asf', 'camGame', 0.5, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 0.5)
	end 
	if curStep == 1312 then
	setProperty('cameraSpeed', 1.5)
	idk = 0.85;
	ofs = 50;
    triggerEvent('Change Character', '1', 'DOOMSDAY_SQUIDWARD')
	setProperty('boyfriendGroup.visible', true);
	setProperty('gfGroup.visible', true);
	xx = 420;
	doTweenZoom('asf', 'camGame', 0.85, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 0.85)
	setProperty('stagefb.visible', false);
	setProperty('curtainstage.visible', false);
	setProperty('bbcurtian.visible', false);
	setProperty('curtianbig.visible', false);
	setProperty('FUCKINGCHAIR.visible', false);
	setProperty('people.visible', false);
	end 	
	if curStep == 1568 then
	idk = 0.65;
	doTweenZoom('asf', 'camGame', 0.65, 0.7, 'cubeOut')
	setProperty('defaultCamZoom', 0.65)
	end 
	if curStep == 1572 then
	xx = 390;
	triggerEvent('Screen Shake', '0.25, 0.012', '0.1, 0.008')
	setProperty('room.visible', false);
	
	setProperty('wall.visible', true);	
	setProperty('firewall.visible', true);	
	setProperty('floor.visible', true);	
	setProperty('firefront.visible', true);	
	setProperty('shading.visible', true);
	end 
	if curStep == 2336 then
	idk = 0.5;
	doTweenZoom('asf', 'camGame', 0.5, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 0.5)
	setProperty('roomback.visible', false);
	setProperty('roomfront.visible', false);
	setProperty('boyfriendGroup.visible', false);
	setProperty('gfGroup.visible', false);
    triggerEvent('Change Character', '1', 'normality2')
	xx = 390;
	ofs = 0;
	setProperty('firefront.visible', false);	
	setProperty('shading.visible', false);
	setProperty('BLOODYTHING.visible', true);
	setProperty('redlight.visible', true);
	setProperty('stagefx.visible', true);
	setProperty('curtainstageX.visible', true);
	setProperty('Xcurtian.visible', true);
	setProperty('pieces.visible', true);
	setProperty('FUCKINGFUCK.visible', true);
	setProperty('debris.visible', true);
	end 
	if curStep == 2464 then
	setProperty('room.visible', false);
	setProperty('boyfriendGroup.visible', true);
	setProperty('gfGroup.visible', true);
	xx = 390;
	ofs = 50;
	doTweenZoom('asf', 'camGame', 0.65, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 0.65)
	idk = 0.65;
	setProperty('BLOODYTHING.visible', false);
	setProperty('redlight.visible', false);
	setProperty('stagefx.visible', false);
	setProperty('curtainstageX.visible', false);
	setProperty('Xcurtian.visible', false);
	setProperty('pieces.visible', false);
	setProperty('FUCKINGFUCK.visible', false);
	setProperty('debris.visible', false);
	
	setProperty('skyx.visible', true);	
	setProperty('lighteffect.visible', true);			
	setProperty('roomx.visible', true);	
	setProperty('shadingx.visible', true);	

	end 
	if curStep == 2592 or curStep == 2726 then
	doTweenZoom('asf', 'camGame', 0.85, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 0.85)
	idk = 0.85;
	end 
	if curStep == 2656 or curStep == 2732 then
	doTweenZoom('asf', 'camGame', 0.95, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 0.95)
	idk = 0.95;
	end 
	if curStep == 2736 then
	doTweenZoom('asf', 'camGame', 1.1, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 1.1)
	idk = 1.1;
	end 
	if curStep == 2720 or curStep == 2740 then
	doTweenZoom('asf', 'camGame', 0.75, 0.2, 'cubeOut')
	setProperty('defaultCamZoom', 0.75)
	idk = 0.75;
	end 
	if curStep == 2744 then
	triggerEvent('Screen Shake', '0.25, 0.012', '0.1, 0.008')
	setProperty('blood.visible', true);
	setProperty('suicide.visible', true);	
	setProperty('room.visible', true);	
	
	setObjectOrder('dadGroup', 4)
	setObjectOrder('boyfriendGroup', 3)
	setObjectOrder('gfGroup', 2)

	setProperty('skyx.visible', false);	
	setProperty('lighteffect.visible', false);			
	setProperty('roomx.visible', false);	
	setProperty('shadingx.visible', false);	
	
	setProperty('wall.visible', false);	
	setProperty('firewall.visible', false);	
	setProperty('floor.visible', false);	
	setProperty('firefront.visible', false);	
	setProperty('shading.visible', false);
	
	end
	if curStep > 2464 and curStep < 2520 then
	triggerEvent('Screen Shake', '0.25, 0.012', '0.1, 0.008')
	end
end


function onUpdate()
    if followchars == true then
        if mustHitSection == false then
			setProperty('defaultCamZoom', idk)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
			if getProperty('dad.animation.curAnim.name') == 'dielol' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
			setProperty('defaultCamZoom', 1.1)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
			if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
			end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end