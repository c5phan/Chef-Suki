if (!audio_is_playing(snd_music)) {
	audio_play_sound(snd_music,0,true);
	o_global.playing = 1;
}

timer--;
if (timer <= 270) {
	a = min(a+0.015, 1)
}

if (a = 1) {
	room_goto(Intro_Cutscene);
}
