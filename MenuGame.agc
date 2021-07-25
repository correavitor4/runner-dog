function menu()
	//SPRITE CREATE
	LoadImage(23,"buttons/play-button.png")
	LoadImage(24,"buttons/play-button-clicked.png")
	
	
	//LOADSPRITES
	//LoadSprite(30,23) //PLAY-BUTTON
	
	
	//POSITIONATE SPRITE
	//SetSpritePosition(30,GetVirtualHeight)
	
	
	
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
