if (!audio_is_playing(snd_music)) {
	audio_play_sound(snd_music,0,true);
	o_global.playing = 1;
}
room_goto(Splash);