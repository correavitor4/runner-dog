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
	Print(lastCreatedObstacle)
	
	if GetSpriteX(1)>=nextPositionToCreateObstacle
		
		
		
		if actuallyObstacleId <= 210
			DeleteSprite(actuallyObstacleId)
			createObstacleSprites(actuallyObstacleId,nextPositionToCreateObstacle)
			lastCreatedObstacle = actuallyObstacleId
			actuallyObstacleId=actuallyObstacleId+1
			
		else 
			maxSpritebusy=1
			DeleteSprite(200)
			actuallyObstacleId=200
			createObstacleSprites(actuallyObstacleId,nextPositionToCreateObstacle)
			lastCreatedObstacle = actuallyObstacleId
			actuallyObstacleId=actuallyObstacleId+1
			

			
		endif	
		
		
		
		nextPositionToCreateObstacle= nextPositionToCreateObstacle+400
	endif
	
	
	//VERIFY COLLISIONS
	
	
	for i=200 to (actuallyObstacleId-1)
		if(GetSpriteExists(i))
			if(GetPhysicsCollision(1,i))
			if((GetSpriteY(1)-GetSpriteHeight(1)/2)>(GetSpriteY(i)-GetSpriteHeight(i)/2))
				gameOver()
			endif
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
		endif
		
		
	next i
	
	/*else
			
		for i=200 to (210)
			if(i=lastCreatedObstacle)
				
			else
				if(GetPhysicsCollision(1,i))
					if((GetSpriteY(1)-GetSpriteHeight(1)/2)>(GetSpriteY(i)-GetSpriteHeight(i)/2))
						gameOver()
					endif
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
			endif
			
			
		next i
	
	endif*/
	
	
return



