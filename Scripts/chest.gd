extends Node2D

@onready var anim_sprite: AnimatedSprite2D= $AnimatedSprite2D

var opened=false 


func _on_area_2d_body_entered(body):
	if body.is_in_group("Player") and not opened:
		opened=true
		anim_sprite.play("Open")
		await anim_sprite.animation_finished
