extends KinematicBody2D
var velocidad=700
var nodo_pelota

func _ready():
	nodo_pelota = get_parent().find_node("pelota")
		
func _sensor():
	if abs(nodo_pelota.position.y - position.y)>90:
		if nodo_pelota.position.y < position.y:
			return -1
		else:
			return 1
	else:
		return 0
		
func regresar():
	position.x=1920-100
	position.y=1080/2
	
func _physics_process(delta):
	var direccion= Vector2(0, _sensor())
	move_and_slide(direccion*velocidad)
	
