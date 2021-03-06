
// Project: Dog Runner 
// Created: 2021-06-10








#include "LoadSprites.agc"
#include "dog.agc"
#include "PhysicsSettings.agc"
#include "LoadBackgrounds.agc"
#include "verifyCamera.agc"
//#include "Cat.agc"
#include "Obstacles.agc"
#include "Sounds.agc"
#include "MenuGame.agc"
#include "GameController.agc"







// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Dog Runner" )
SetWindowSize( 1280, 720, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1280, 720 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 60,10) // 
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts


//GAME START WITH MENU SCREEN
startMenu()


//Label que inicia o jogo (sub-rotina)
gameStarted:


//SetPhysicsDebugOn()



//VARIABLES
pontuation = 0





//Control variables
first_frame_complete = 0
jumpCount=0
jumping=0
actuallyObstacleId=200
charactersVelocity = 7500
actuallyBackground =1
nextChange = 1280
nextPositionToCreateObstacle = 1000
lastObstacleCatCollideId = 0
maxSpritebusy=0
lastCreatedObstacle=200


gosub LoadSprites
gosub StartPhysics
gosub CreateSounds





	do
		//FAZ A CÂMERA ACOMPANHAR O MOVIMENTO DO CACHORRO
		SetViewOffset(GetSpriteX(1),0)
		gosub VerifyCameraPosition
		
		obstacleXCountPosition=obstacleXCountPosition+4
		
		PrintC("Pontuação: ")
		Print(pontuation)

		gosub UpdateDogState
		//updateCatState(charactersVelocity)
		
		gosub UpdateObstacles
		first_frame_complete=1
		
		gosub UpdateSounds
		
		
		//gosub UpdatePontuation
		
		
		
		Sync()
	loop

return
