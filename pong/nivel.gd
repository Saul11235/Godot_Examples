extends Node2D

func reinicar_partido():
	$Humano.regresar()
	$robot.regresar()
	$pelota.se_mueve=false
	$pelota.direccion=Vector2.ZERO
	$pelota.position=Vector2(1980/2,1080/2)	
	$pelota.lanzar_pelota()
	
	
	pass

func _on_arcoJug_body_entered(body):
	reinicar_partido()
	pass # Replace with function body.


func _on_arcoIA_body_entered(body):
	reinicar_partido()
	pass # Replace with function body.
