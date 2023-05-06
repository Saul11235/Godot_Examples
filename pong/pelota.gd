extends KinematicBody2D

var velocidad=0
var velocidad_disparo=800
var direccion = Vector2.ZERO
var se_mueve = false
var contador = 0
var memoriaX = 0
var memoriaY = 0



func _ready():
	randomize()
	lanzar_pelota()

func lanzar_pelota():
	velocidad=velocidad_disparo
	direccion.x=[1,-1][randi() % 2]
	direccion.y=[0.8,-0.8][randi() % 2]
	se_mueve =true
	pass
	
func _physics_process(delta):
	if se_mueve:
		var colision = move_and_collide(velocidad*direccion*delta)
		if colision:
			direccion = direccion.bounce(colision.normal)


