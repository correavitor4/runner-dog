function loadObstacleImages()
	LoadImage(20,"obstacles/brick_1.png")
	LoadImage(21,"obstacles/brick_2.png")
	LoadImage(22,"obstacles/brick_3.png")
	LoadImage(23, "obstacles/SmallCrate.png")
endfunction



function createObstacleSprites(id_sprite,id_image,positionXCount)
	CreateSprite(id_sprite,id_image)
	
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
	
	if(id_image=23)
		setspriteSize(id_sprite,110,100)
		SetSpritePosition(id_sprite,Random(positionXCount,positionXCount+300),(GetVirtualHeight()-200)-GetSpriteY(id_sprite))
	endif
	
	
	
endfunction


UpdateObstacles:
	if (Mod(obstacleXCountPosition,300)=0)
		createObstacleSprites(ObstableSpriteId,random(20,23),obstacleXCountPosition)
		ObstableSpriteId=ObstableSpriteId+1
	endif


return
