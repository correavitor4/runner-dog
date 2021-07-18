function loadObstacleImages()
	LoadImage(20,"obstacles/brick_1.png")
	LoadImage(21,"obstacles/brick_2.png")
	LoadImage(22,"obstacles/brick_3.png")
	//LoadImage(23, "obstacles/SmallCrate.png")
endfunction



function createObstacleSprites(id_sprite,id_image,positionXCount)
	CreateSprite(id_sprite,id_image)
	
	//The function only create sprite when the rest division of coordinates/300 are 0
	if(MOD(positionXCount,300)=0)
		if(id_image=20)
			setspriteSize(id_sprite,110,100)
			SetSpritePosition(id_sprite,Random(positionXCount,positionXCount+300),(GetVirtualHeight()-200)-GetSpriteY(id_sprite))
		endif
		
		if(id_image=21)
			setspriteSize(id_sprite,110,200)
			SetSpritePosition(id_sprite,Random(positionXCount,positionXCount+300),(GetVirtualHeight()-300)-GetSpriteY(id_sprite))
		endif
		
		if(id_image=22)
			setspriteSize(id_sprite,110,250)
			SetSpritePosition(id_sprite,Random(positionXCount,positionXCount+300),(GetVirtualHeight()-350)-GetSpriteY(id_sprite))
		endif
		
		/*if(id_image=23)
			setspriteSize(id_sprite,110,100)
			SetSpritePosition(id_sprite,Random(positionXCount,positionXCount+300),(GetVirtualHeight()-200)-GetSpriteY(id_sprite))
		endif*/
		
		
	endif
	
	
	
	
	
endfunction


UpdateObstacles:
	if (Mod(obstacleXCountPosition,300)=0)
		createObstacleSprites(ObstableSpriteId,random(20,22),obstacleXCountPosition)
		ObstableSpriteId=ObstableSpriteId+1
	endif
return


VerifyObstaclesCollision:
	
	xMin=GetSpriteX(actuallyObstacleId)-GetSpriteWidth(actuallyObstacleId)/2
	xMax=GetSpriteX(actuallyObstacleId)+GetSpriteWidth(actuallyObstacleId)/2
	yMin=GetSpriteY(actuallyObstacleId)+GetSpriteHeight(actuallyObstacleId)/2
	yMax=GetSpriteY(actuallyObstacleId)-GetSpriteHeight(actuallyObstacleId)/2
	xMinDog=GetSpriteX(1)-GetSpriteWidth(1)/2
	xMaxDog=GetSpriteX(1)+GetSpriteWidth(1)/2
	yMinDog=GetSpriteY(1)+GetSpriteHeight(1)/2
	yMaxDog=GetSpriteY(1)-GetSpriteHeight(1)/2
	
	if(xMaxDog>=xMin)
		PrintC("Está passando em um obstáculo")
		PrintC(actuallyObstacleId)
		
		if yMinDog > yMax
			SetSpritePosition(1,GetSpriteX(1),yMax)
		endif
		
		
	endif
	
	if(xMinDog>xMax)
		actuallyObstacleId=actuallyObstacleId+1
	endif
	
return 
