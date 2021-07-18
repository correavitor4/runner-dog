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
			SetSpritePosition(id_sprite,Random(positionXCount+50,positionXCount+300),(GetVirtualHeight()-200)-GetSpriteY(id_sprite))
		endif
		
		if(id_image=21)
			setspriteSize(id_sprite,110,200)
			SetSpritePosition(id_sprite,Random(positionXCount+50,positionXCount+300),(GetVirtualHeight()-300)-GetSpriteY(id_sprite))
		endif
		
		if(id_image=22)
			setspriteSize(id_sprite,110,250)
			SetSpritePosition(id_sprite,Random(positionXCount+50,positionXCount+300),(GetVirtualHeight()-350)-GetSpriteY(id_sprite))
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
	xMinNextObstacle=GetSpriteX(actuallyObstacleId+1)-GetSpriteWidth(actuallyObstacleId+1)/2
	xMinDog=GetSpriteX(1)-GetSpriteWidth(1)/2
	xMaxDog=GetSpriteX(1)+GetSpriteWidth(1)/2
	yMinDog=GetSpriteY(1)+GetSpriteHeight(1)/2
	yMaxDog=GetSpriteY(1)-GetSpriteHeight(1)/2
	
	if(GetSpriteImageID(actuallyObstacleId)=20)
		yGroundDog=524-110
	else
		if(GetSpriteImageID(actuallyObstacleId)=22)
			yGroundDog=524-260
			
		else
			yGroundDog=yMax
		endif
	endif
	
	
	if(xMaxDog>=xMin)
		
		if xMinDog < xMax
			if yMinDog > yGroundDog
				if jumping=0
					SetSpritePosition(1,GetSpriteX(1),yGroundDog)
				endif
				
				
			else
				SetSpritePosition(1,GetSpriteX(1),GetSpriteY(1))
					
			endif
				
			
		endif
		
	else
		yGroundDog=524
	endif
	
	if(xMaxDog>=xMinNextObstacle)
		actuallyObstacleId=actuallyObstacleId+1
		jumping=0
	endif
	
	
	
return 
