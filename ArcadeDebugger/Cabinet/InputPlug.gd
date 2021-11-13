extends Node2D

var selected = false
var restPos = null
var port_nodes = []

func _ready():
	port_nodes = get_tree().get_nodes_in_group("InputPort")
	restPos = port_nodes[0].global_position
	

func _on_Area2D_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_just_pressed("click"):
		selected = true

func _physics_process(delta):
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), delta * 40)
	elif restPos != null:
			global_position = lerp(global_position, restPos, delta * 10)
	
		
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and not event.pressed:
			selected = false
			restPos = null
			var bestDist = 10000
			for port in port_nodes:
				var dist = global_position.distance_squared_to(port.global_position)
				if dist < bestDist:
					bestDist = dist
					restPos = port.global_position
