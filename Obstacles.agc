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
	
	
	//TURN ON SPRITE PHYSICS
	SetSpritePhysicsOn(id_sprite,1)
	
	//CREATE SHAPEBOX OF SPRITE PHYSICS
	SetSpriteShapeBox(id_sprite,-GetSpriteWidth(id_sprite)/2,-GetSpriteHeight(id_sprite)/2,GetSpriteWidth(id_sprite)/2,GetSpriteHeight(id_sprite)/2,0)
endfunction


UpdateObstacles:
	if GetSpriteX(1)>=nextPositionToCreateObstacle
		createObstacleSprites(actuallyObstacleId,nextPositionToCreateObstacle)
		actuallyObstacleId=actuallyObstacleId+1
		nextPositionToCreateObstacle= nextPositionToCreateObstacle+400
	endif
	
	
	//VERIFY COLLISIONS
	for i=200 to (actuallyObstacleId-1)
		if(GetPhysicsCollision(1,i))
			jumping=0
		endif
		
		if(GetPhysicsCollision(8,i))
			if i = lastObstacleCatCollideId
				
			else
				lastObstacleCatCollideId = i
				newCatPositionY = GetSpriteY(i)-GetSpriteHeight(i)/2-GetSpriteHeight(8)
				SetSpritePosition(8,GetSpriteX(8),newCatPositionY)
			endif
		endif
		printc("gato Y: ")
		printc(GetSpriteY(8)+GetSpriteHeight(8)/2)
		printc("altura obstáculo superfície: ")
		Print(GetSpriteY(200) -GetSpriteHeight(200)/2)
	next i
return



