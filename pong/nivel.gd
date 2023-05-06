extends Node2D
var marcador_humano = 0
var marcador_robot = 0
var limite_victoria = 10
var nivel_nuevo=true
var estamos_jugando=true

func reinicar_partido():
	if nivel_nuevo:
		nivel_nuevo=false
		marcador_humano = -2
		marcador_robot  = -2
	# coloca  ----
	$MarcadorHumano.text = var2str(marcador_humano+1)
	$MarcadorRobot.text  = var2str(marcador_robot+1)
	# ------------
	$Humano.regresar()
	$robot.regresar()
	$pelota.se_mueve=false
	$pelota.direccion=Vector2.ZERO
	$pelota.position=Vector2(1980/2,1080/2)	
	if estamos_jugando:
		$pelota.lanzar_pelota()
 
func _process(delta):
	if (Input.is_action_just_released("ui_down") or Input.is_action_just_released("ui_up")) and not(estamos_jugando):		
		get_tree().change_scene("inicio.tscn")
			
func _on_arcoJug_body_entered(body):
	if marcador_robot >= limite_victoria:
		estamos_jugando=false
	else:
		marcador_robot += 1
		reinicar_partido()


func _on_arcoIA_body_entered(body):
	if marcador_humano >= limite_victoria:
		estamos_jugando=false
	else:
		marcador_humano += 1
		reinicar_partido()
