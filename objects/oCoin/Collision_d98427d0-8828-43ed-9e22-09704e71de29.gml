if (other.sprite_index == sSnake
	or other.sprite_index == sSnakeHead
	or other.sprite_index == sSnakeBody
	or other.sprite_index == sSnakeTurn
	or other.sprite_index == sSnakeTurnInner
) {
	instance_destroy();
}