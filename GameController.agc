//VARIABLES
//checkpointPosition=1000
pontuation=0


/*UpdatePontuation:
	PrintC("Pontuação: ")
	Print(pontuation)
	for i=200 to 210
		if(GetSpriteExists(i))
			if(GetSpriteX(1)=GetSpriteX(i))
				pontuation=pontuation+1
				
			endif
		endif
	next i
		

return */




function startMenu()
	menu()
endfunction 

function playGame()
	
	DeleteVirtualButton(1)
	DeleteSprite(30)
	DeleteImage(23)
	DeleteImage(24)
	DeleteImage(25)
	
	
	gosub gameStarted
endfunction

function gameOver()
	
	
	//DELETA TODOS OS SPRITES QUE ESTÃO SENDO RODADOS NO GAME
	
	
	for i=1 to 210
		if(GetSpriteExists(i))
			DeleteSprite(i)
		endif
		
		if(GetImageExists(i))
			DeleteImage(i)
		endif
	next i
	
	
	//DELETE MUSIC AND SOUNDS
	StopMusic()
	DeleteMusic(1)
	
	
	//Reseta a câmera para a posição inicial
	SetViewOffset(0,0)
	
	startMenu()

endfunction


