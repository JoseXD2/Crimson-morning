function onCreate()

	setProperty('gfGroup.visible', false);
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bfmc');

	-- phase 1
	makeLuaSprite('bluelight', 'background/kitchen/phase1/bluelight', -700,-400);
	addLuaSprite('bluelight', false);
	scaleLuaSprite('bluelight', 2, 2);
	
	makeLuaSprite('kitchen', 'background/kitchen/phase1/kitchen', -700,-400);
	addLuaSprite('kitchen', false);
	scaleLuaSprite('kitchen', 2, 2);
	
	makeLuaSprite('krabs', 'background/kitchen/phase1/krabs', 1300, -100);
	addLuaSprite('krabs', false);
	scaleLuaSprite('krabs', 1.3, 1.3);
	
	makeAnimatedLuaSprite('squidward','background/kitchen/phase1/mc_squidfart', 700, -380)
	scaleLuaSprite('squidward', 1.1, 1.1);
	addAnimationByPrefix('squidward','idle', 'idle', 24, true)
	addAnimationByPrefix('squidward','hey', 'hey', 24, true)
	addLuaSprite('squidward', false);
	setProperty('squidward.visible', false);
	
	makeLuaSprite('yellowlight', 'background/kitchen/phase1/yellowlight', -700, -400);
	addLuaSprite('yellowlight', true);
	scaleLuaSprite('yellowlight', 4, 4);
	
	-- phase 2
	makeLuaSprite('standoff', 'background/kitchen/phase2/standoff', -700,-400);
	addLuaSprite('standoff', false);
	
	makeLuaSprite('light', 'background/kitchen/phase2/light', -700,-400);
	addLuaSprite('light', true);
	
	setProperty('standoff.visible', false);	
	setProperty('light.visible', false);	
    setProperty('cameraSpeed', 1.4)
end