local xx = 420;
local yy = 350;
local xx2 = 850;
local yy2 = 500;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
addCharacterToList('SPONGECHASE', 'dad')
addCharacterToList('bf-head', 'boyfriend') 
addCharacterToList('PATRICKCHASE', 'gf')  

	makeLuaSprite('wall2', 'background/surgery/dark/wall', -650,-370);
    scaleLuaSprite('wall2', 2, 2);
	addLuaSprite('wall2', false);

	makeLuaSprite('light2', 'background/surgery/dark/light', -650,-330);
    scaleLuaSprite('light2', 4, 4);
	addLuaSprite('light2', true);
	
	-- background shit
	makeLuaSprite('wall', 'background/surgery/wall', -650,-330);
	addLuaSprite('wall', false);
    scaleLuaSprite('wall', 2, 2); 
	setProperty('wall.visible', false);
	
	makeLuaSprite('floor', 'background/surgery/floor', -650,-330);
	addLuaSprite('floor', false);
     scaleLuaSprite('floor', 2, 2);
	setProperty('floor.visible', false);

	makeLuaSprite('table', 'background/surgery/table', -650,-330);
	addLuaSprite('table',false);
    scaleLuaSprite('table', 2, 2);
	setProperty('table.visible', false);
	
	makeLuaSprite('light', 'background/surgery/light', -650,-330);
	addLuaSprite('light', true);
    scaleLuaSprite('light', 4, 4);
	setProperty('light.visible', false);

	-- background shit 2
	makeAnimatedLuaSprite('DeadHallway','background/surgery/phase2/DeadHallway', -700,-330)
	addAnimationByPrefix('DeadHallway','deadhallway', 'deadhallway', 24, true)
	addLuaSprite('DeadHallway', false);
    scaleLuaSprite('DeadHallway', 2, 2);
	
	makeAnimatedLuaSprite('BF_BODY','background/surgery/phase2/BF_BODY', 250, 200)
	addAnimationByPrefix('BF_BODY','BF BODY idle', 'BF BODY idle', 24, true)
	addLuaSprite('BF_BODY', false);

    setProperty('DeadHallway.visible', false);
    setProperty('BF_BODY.visible', false);

    setProperty('cameraSpeed', 1.1)
end

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
			setProperty('defaultCamZoom',0.7)
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
        else
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

function onStepHit()
    if curStep == 464 then
    removeLuaSprite('wall2')
    removeLuaSprite('light2')
    setProperty('light.visible', true);
    setProperty('wall.visible', true);
    setProperty('floor.visible', true);
    setProperty('table.visible', true);
    setProperty('cameraSpeed', 1.2)
    end
    if curStep == 1487 then
    xx = 620;
    yy = 350;
    xx2 = 620;
    yy2 = 350;
    ofs = 0;
    removeLuaSprite('light')
    removeLuaSprite('wall')
    removeLuaSprite('floor')
    removeLuaSprite('table')
        makeLuaSprite('flash2', '', 0, 0);
        makeGraphic('flash2',1280,720,'ffffff')
        doTweenAlpha('flTf2','flash2',0,0.3,'linear')
        addLuaSprite('flash2', true);
        setLuaSpriteScrollFactor('flash2',0,0)
        setProperty('flash2.scale.x',2)
        setProperty('flash2.scale.y',2)
        setProperty('flash2.alpha',0.4)
        setProperty('flash2.alpha',0.6)
        doTweenAlpha('flTw2','flash2',0,0.3,'linear')
    setProperty('DeadHallway.visible', true);
    setProperty('BF_BODY.visible', true);
    triggerEvent('Change Character', 'dad', 'SPONGECHASE')
    triggerEvent('Change Character', 'gf', 'PATRICKCHASE')
    triggerEvent('Change Character', 'bf', 'bf-head')
    luaSpritePlayAnimation('DeadHallway', 'deadhallway')
    luaSpritePlayAnimation('BF_BODY', 'BF BODY idle')
    setProperty('cameraSpeed', 1.5)
    end
end