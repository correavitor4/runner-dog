LoadSprites:


//Variables
background=2
background2=4
background3=6
ground=3
ground2=5
ground3=7
dog=1
cat=8
ObstableSpriteId = 200 //I'm reserving sprite ids above 200 for the obstacle sprites I'm going to render


/*
IMAGES DESCRIPTION:

*/

/*
OTHER:

*/

//Load images
loadDogImages()
loadCatImages()
loadObstacleImages()

LoadImage(13,"background/layer_1.png")
LoadImage(14,"background/layer_3_new.png")


//Sprites
CreateSprite(background,13)
CreateSprite(ground,14)
CreateSprite(background2,13)
CreateSprite(ground2,14)
CreateSprite(background3,13)
CreateSprite(ground3,14)

createDogSprite(dog,1)
createCatSprite()


/*createObstacleSprites(9,20)
createObstacleSprites(10,21)
createObstacleSprites(11,22)*/




//ANIMATE SPRITES
animateDogSprite()
animateCatSprite()




//set the size of sprites

SetSpriteSize(background,GetVirtualWidth(),GetVirtualHeight())
SetSpriteSize(ground,GetVirtualWidth(),100)
SetSpriteSize(background2,GetVirtualWidth(),GetVirtualHeight())
SetSpriteSize(ground2,GetVirtualWidth(),100)
SetSpriteSize(background3,GetVirtualWidth(),GetVirtualHeight())
SetSpriteSize(ground3,GetVirtualWidth(),100)
SetSpriteSize(dog,130,100)
SetSpriteSize(cat,110,80)
/*SetSpriteSize(9,40,100)
SetSpriteSize(10,50,100)
SetSpriteSize(11,50,100)*/



//Set the position of sprites
SetSpritePosition(ground,0,GetVirtualHeight()-100)
SetSpritePosition(background,0,0)
SetSpritePosition(ground2,GetVirtualWidth(),GetVirtualHeight()-100)
SetSpritePosition(background2,GetVirtualWidth(),0)
SetSpritePosition(ground3,GetVirtualWidth()*2,GetVirtualHeight()-100)
SetSpritePosition(background3,GetVirtualWidth()*2,0)
SetSpritePosition(dog,10,GetSpriteY(ground)-103)
SetSpritePosition(cat,650,GetSpriteY(ground)-103)



//PHYSICS
SetSpriteShapeBox(dog,-75,-50,75,50,0)

SetSpriteShapeBox(ground,-GetVirtualWidth()/2+1,-45,GetVirtualWidth()/2-1,50,0)
SetSpriteShapeBox(ground2,-GetVirtualWidth()/2+1,-45,GetVirtualWidth()/2-1,50,0)
SetSpriteShapeBox(ground3,-GetVirtualWidth()/2+1,-45,GetVirtualWidth()/2-1,50,0)


SetSpritePhysicsOn(dog,2)
SetSpritePhysicsOn(cat,2)
//SetSpritePhysicsOn(ground,1)
//SetSpritePhysicsOn(ground2,1)
//SetSpritePhysicsOn(ground3,1)





SetSpritePhysicsMass(1,10)
SetSpritePhysicsMass(8,10)








//Turn on sprites animation
PlaySprite(1,20)
PlaySprite(8,10)


while obstacleXCountPosition<2400
	createObstacleSprites(ObstableSpriteId,Random(20,22),obstacleXCountPosition)
	obstacleXCountPosition=obstacleXCountPosition+300
	ObstableSpriteId=ObstableSpriteId+1
	
	
endwhile


return
