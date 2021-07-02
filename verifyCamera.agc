function verifyCameraPosition(first_frame_complete)
	
	if GetViewOffsetX()=GetSpriteX(4)
		SetSpritePosition(2,GetSpriteX(2)+3*GetVirtualWidth(),GetSpriteY(2))
		SetSpritePosition(3,GetSpriteX(3)+3*GetVirtualWidth(),GetSpriteY(3))
	endif
	
	if GetViewOffsetX()=GetSpriteX(6)
		SetSpritePosition(4,GetSpriteX(4)+3*GetVirtualWidth(),GetSpriteY(4))
		SetSpritePosition(5,GetSpriteX(5)+3*GetVirtualWidth(),GetSpriteY(5))
	endif
	
	if GetViewOffsetX()=GetSpriteX(2) and first_frame_complete=1
		SetSpritePosition(6,GetSpriteX(6)+3*GetVirtualWidth(),GetSpriteY(6))
		SetSpritePosition(7,GetSpriteX(7)+3*GetVirtualWidth(),GetSpriteY(7))
	endif
endfunction
