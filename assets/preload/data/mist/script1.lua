function onCreate()
makeAnimatedLuaSprite('overstat', 'VCR/overstat', 0, 0);
addAnimationByPrefix('overstat', 'overstat', 'overstat', 20, true)
objectPlayAnimation('overstat', 'overstat', true);
setObjectCamera('overstat', 'other')
addLuaSprite('overstat', false);
scaleObject('overstat', 6, 6)  

makeLuaSprite('overlay', 'VCR/overlay', 0, 0);
setLuaSpriteScrollFactor('overlay', 0, 0);
addLuaSprite('overlay', true);
scaleObject('overlay', 1, 1)  
setObjectCamera('overlay', 'other');	

makeLuaSprite('VCR', 'VCR/VCR', 0, 0);
setLuaSpriteScrollFactor('VCR', 0, 0);
addLuaSprite('VCR', true);
setObjectCamera('VCR', 'other');	

doTweenAlpha('overlayTUIN', 'overlay', 0.46, 0.25, 'quadInOut');
doTweenAlpha('camHUD', 'camHUD', 0.65, 0.001, 'quadInOut');
end 

function onCountdownStarted()
doTweenAlpha('overstat', 'overstat', 0.25, 0.01, 'linear');
end

function onUpdate()
if getProperty('camHUD.alpha') == 1 then
doTweenAlpha('camHUD', 'camHUD', 0.65, 0.001, 'quadInOut');
end
end