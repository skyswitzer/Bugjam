extends Node2D


# Declare member variables here. Examples:
var inputPorts: Dictionary
var outputPorts: Dictionary
var wires: Array

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var port = get_node("The Fixer Scene/The Circuit Board/OutputToGame/OutputPortDebug")
	var val = port.getValue()
	if(val != null):
		get_node("DebugLabel").text = str(val)
