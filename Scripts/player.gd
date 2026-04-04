extends CharacterBody2D

var speed=125

@onready var anim= $AnimationPlayer

func _physics_process(_delta):
	var direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity=direction*speed
	move_and_slide()

	if direction.length()>0:
		anim.play("Walk")
	else:
		anim.play("Idle")

	var mouse_pos = get_global_mouse_position()
	
	if mouse_pos.x <global_position.x:
		$Sprite2D.flip_h = true
	else:
		$Sprite2D.flip_h = false
