

//DOG VARIABLES


//LOAD IMAGES
function loadDogImages()
	LoadImage(1,"dog/dog_1.png")
	LoadImage(2,"dog/dog_2.png")
	LoadImage(3,"dog/dog_3.png")
	LoadImage(4,"dog/dog_4.png")
	LoadImage(5,"dog/dog_5.png")
	LoadImage(6,"dog/dog_6.png")
	LoadImage(7,"dog/dog_7.png")
	LoadImage(8,"dog/dog_8.png")
	LoadImage(9,"dog/dog_9.png")
	LoadImage(10,"dog/dog_10.png")
	LoadImage(11,"dog/dog_11.png")
	LoadImage(12,"dog/dog_12.png")
endfunction

//SPRITES CREATE
function createDogSprite(name,imageId)
	CreateSprite(name,imageId)

endfunction


//ANIMATE DOG SPRITE
function animateDogSprite()
	for i=2 to 10
		AddSpriteAnimationFrame(1,i)
	next i

endfunction


UpdateDogState:
	if(GetRawKeyPressed(32) and jumping<2)
		jump_count=30
		jumping=jumping+1
	endif
	
	if(jump_count>0)
		jump_count=jump_count-1
		SetSpritePosition(1,GetSpriteX(1),GetSpriteY(1)-jump_count)
	
	endif
	
	if(GetPhysicsCollision(1,3))
		jumping=0
	endif
	
	if(GetPhysicsCollision(1,5))
		jumping=0
	endif
	
	if(GetPhysicsCollision(1,7))
		jumping=0
	endif
	
	
	
	
	//charactersVelocity=7500
	SetSpritePhysicsVelocity(1,charactersVelocity,GetSpritePhysicsVelocityY(1))

	
return

