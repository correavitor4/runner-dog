VerifyCameraPosition:
	
	//VARIABLES
	
	
	/*if GetViewOffsetX()=GetSpriteX(4)
		SetSpritePosition(2,GetSpriteX(2)+3*GetVirtualWidth(),GetSpriteY(2))
		SetSpritePosition(3,GetSpriteX(3)+3*GetVirtualWidth(),GetVirtualHeight()-100)
	endif
	
	if GetViewOffsetX()=GetSpriteX(6)
		SetSpritePosition(4,GetSpriteX(4)+3*GetVirtualWidth(),GetSpriteY(4))
		SetSpritePosition(5,GetSpriteX(5)+3*GetVirtualWidth(),GetVirtualHeight()-100)
	endif
	
	if GetViewOffsetX()=GetSpriteX(2) and first_frame_complete=1
		SetSpritePosition(6,GetSpriteX(6)+3*GetVirtualWidth(),GetSpriteY(6))
		SetSpritePosition(7,GetSpriteX(7)+3*GetVirtualWidth(),GetVirtualHeight()-100)
	endif*/
	
	if(GetSpriteX(1)>=nextChange)
		nextChange=nextChange + GetVirtualWidth()
		if(actuallyBackground=3)
			actuallyBackground=1
		else
			actuallyBackground=actuallyBackground+1
		
		endif
		
		changeBackground(actuallyBackground)
	endif
	
	
	
	
return


function changeBackground(actuallyBackground)
	if actuallyBackground=1
		SetSpritePosition(6,GetSpriteX(6)+3*GetVirtualWidth(),GetSpriteY(6))
		SetSpritePosition(7,GetSpriteX(7)+3*GetVirtualWidth(),GetVirtualHeight()-100)
	endif
	
	if actuallyBackground=2
		SetSpritePosition(2,GetSpriteX(2)+3*GetVirtualWidth(),GetSpriteY(2))
		SetSpritePosition(3,GetSpriteX(3)+3*GetVirtualWidth(),GetVirtualHeight()-100)
	endif
	
	if actuallyBackground=3
		SetSpritePosition(4,GetSpriteX(4)+3*GetVirtualWidth(),GetSpriteY(4))
		SetSpritePosition(5,GetSpriteX(5)+3*GetVirtualWidth(),GetVirtualHeight()-100)
	endif
	
endfunction
