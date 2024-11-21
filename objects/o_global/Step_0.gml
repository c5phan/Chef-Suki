if (!playing && global.music) {
	audio_play_sound(snd_music, 0, true);
	playing = 1;
}
if (playing && !global.music) {
	audio_stop_sound(snd_music);
	playing = 0;
}
