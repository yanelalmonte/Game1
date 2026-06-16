extends Node2D


@export var projectile_scene: PackedScene

func shoot():
	var projectile=projectile_scene.instantiate()
	
	projectile.global_position = ($Sprite2D/ShotPoint.global_position)
	projectile.global_rotation = ($Sprite2D/ShotPoint.global_rotation)
	get_tree().current_scene.add_child(projectile)

func _physics_process(_delta):
	var mouse_pos = get_global_mouse_position()
	var direction = (mouse_pos-global_position).angle()
	rotation = direction
	
	if Input.is_action_just_pressed("Shoot"):
		$AnimationPlayer.play("Shoot")
		shoot()
	
