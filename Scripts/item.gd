extends Area2D


@onready var anim_player: AnimationPlayer=$AnimationPlayer

func _ready():
	anim_player.play("Spawn")
	anim_player.animation_finished.connect(_on_animation_finished)
	
func _on_animation_finished(anim_name: StringName):
	if anim_name=="Spawn":
		anim_player.play("Fly")
	
