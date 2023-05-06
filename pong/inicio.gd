extends Node2D

func _process(delta):
	if Input.is_action_just_released("ui_down") or Input.is_action_just_pressed("ui_up"):
		get_tree().change_scene("nivel.tscn")
