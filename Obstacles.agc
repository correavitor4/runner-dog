function loadObstacleImages()
	LoadImage(20,"obstacles/brick_1.png")
	LoadImage(21,"obstacles/brick_2.png")
	LoadImage(22,"obstacles/brick_3.png")
	//LoadImage(23, "obstacles/SmallCrate.png")
endfunction



function createObstacleSprites(id_sprite,positionXCount)
	//DEFINE (WITH RANDOM PARAMETERS) A IMAGE TO USE FOR SPRITE CREATION
	id_image = Random(20,22)
	
	//CREATE THE SPRITE
	CreateSprite(id_sprite,id_image)
	
	
	
	
	
	//CONFIGURE CREATED SPRITE
	if(id_image=20)
		setspriteSize(id_sprite,110,100)
		SetSpritePosition(id_sprite,Random(positionXCount+1280,positionXCount+1680),(GetVirtualHeight()-200)-GetSpriteY(id_sprite))
		
	endif
	
	if(id_image=21)
		setspriteSize(id_sprite,110,200)
		SetSpritePosition(id_sprite,Random(positionXCount+1280,positionXCount+1680),(GetVirtualHeight()-300)-GetSpriteY(id_sprite))
	endif
	
	if(id_image=22)
		setspriteSize(id_sprite,110,250)
		SetSpritePosition(id_sprite,Random(positionXCount+1280,positionXCount+1680),(GetVirtualHeight()-350)-GetSpriteY(id_sprite))
	endif
	
	
	SetSpritePhysicsOn(id_sprite,1)
	
	SetSpriteShapeBox(id_sprite,-GetSpriteWidth(id_sprite)/2,-GetSpriteHeight(id_sprite)/2,GetSpriteWidth(id_sprite)/2,GetSpriteHeight(id_sprite)/2,0)
endfunction


UpdateObstacles:
	if GetSpriteX(1)>=nextPositionToCreateObstacle
		createObstacleSprites(actuallyObstacleId,nextPositionToCreateObstacle)
		actuallyObstacleId=actuallyObstacleId+1
		nextPositionToCreateObstacle= nextPositionToCreateObstacle+400
	endif
return


