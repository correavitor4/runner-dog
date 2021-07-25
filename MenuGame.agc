function menu()
	//SPRITE CREATE
	LoadImage(23,"buttons/play-button.png")
	LoadImage(24,"buttons/play-button-clicked.png")
	LoadImage(25,"background//full_background.png")
	
	//CREATE SPRITES
	CreateSprite(30,25)
	

	
	
	//SET SPRITE SIZE
	SetSpriteSize(30,GetVirtualWidth(),GetVirtualHeight())
	
	
	//POSITIONATE SPRITE/IMAGE
	SetSpritePosition(30,0,0)
	
	
	
	
	//ADD BUTTONS
	AddVirtualButton (1, GetVirtualWidth()/2, GetVirtualHeight()/2,GetVirtualWidth()/4)
	
	
	//SET IMAGE BUTTONS
	SetVirtualButtonImageUp (1, 23)
	SetVirtualButtonImageDown(1,24)
	
	//REPEAT WHEN MENU IS ON
	do
		if(GetVirtualButtonPressed(1))
			playGame()
			exit
		endif
		
		sync()
	loop
endfunction
