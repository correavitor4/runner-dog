CreateSounds:

LoadMusic(1,"music/Spy.mp3")

return 


UpdateSounds:
//MUSIC
if(GetMusicPlaying()=0)
	PlayMusic(1)
endif

return 
