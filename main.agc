
// Project: Dog Runner 
// Created: 2021-06-10








#include "LoadSprites.agc"
#include "dog.agc"
#include "PhysicsSettings.agc"
#include "LoadBackgrounds.agc"
#include "verifyCamera.agc"
#include "Cat.agc"
#include "Obstacles.agc"



SetPhysicsDebugOn()



//VARIABLES
pontuacao = 0





//Control variables
first_frame_complete = 0
jumpCount=0
jumping=0
obstacleXCountPosition = 1200
actuallyObstacleId=200

charactersVelocity = 7500
actuallyBackground =1
nextChange = 1280





// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Dog Runner" )
SetWindowSize( 1280, 720, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1280, 720 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 60,0) // 
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts


gosub LoadSprites
gosub StartPhysics




do
	
	SetViewOffset(GetSpriteX(1),0)
	print(GetSpriteX(1))
	gosub VerifyCameraPosition
	
	obstacleXCountPosition=obstacleXCountPosition+4
	
	print(actuallyBackground)
	print(nextChange)

	gosub UpdateDogState
	updateCatState(charactersVelocity)
	
	 
	first_frame_complete=1
    Sync()
loop
