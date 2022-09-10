function onCreate()
makeAnimatedLuaSprite('overstat', 'VCR/overstat', 0, 0);
addAnimationByPrefix('overstat', 'overstat', 'overstat', 20, true)
objectPlayAnimation('overstat', 'overstat', true);
setObjectCamera('overstat', 'other')
addLuaSprite('overstat', false);
scaleObject('overstat', 6, 6)  

makeLuaSprite('Overlay', 'VCR/Overlay', 0, 0);
setLuaSpriteScrollFactor('Overlay', 0, 0);
addLuaSprite('Overlay', true);
scaleObject('Overlay', 1, 1)  
setObjectCamera('Overlay', 'other');	

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
