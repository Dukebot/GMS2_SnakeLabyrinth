if (other.sprite_index == oGame.snakeSprite) {
	instance_destroy();
	audio_play_sound(sndPickup, 0, 0);
}