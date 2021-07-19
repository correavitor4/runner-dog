
function loadCatImages()
	LoadImage(15,"cat/sprite_1.png")
	LoadImage(16,"cat/sprite_2.png")
	LoadImage(17,"cat/sprite_3.png")
	LoadImage(18,"cat/sprite_4.png")
	LoadImage(19,"cat/sprite_5.png")
	
endfunction


function createCatSprite()
	CreateSprite(8,15)
endfunction

function animateCatSprite()
	for i=16 to 19
		AddSpriteAnimationFrame(8,i)
	next i
endfunction


function updateCatState()
	SetSpritePhysicsVelocity(8,10000,0)
endfunction

