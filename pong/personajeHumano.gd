extends KinematicBody2D
var velocidad=1000

func _physics_process(delta):
	var direccion = Vector2.ZERO
	if Input.is_action_pressed("ui_down"):
		direccion.y+= 1
	if Input.is_action_pressed("ui_up"):
		direccion.y-= 1
	move_and_slide(direccion*velocidad)
	
