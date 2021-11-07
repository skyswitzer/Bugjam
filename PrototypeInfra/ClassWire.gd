extends Node

class_name Wire

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export(Vector2) var input = null
export(Vector2) var output = null

# Called when the node enters the scene tree for the first time.
func _ready():
	var line = $Line2D
	var p1 = Vector2(input.x+300, input.y+60)
	var p2 = Vector2(output.x-300, output.y+60)
	line.add_point(input)
	for n in 10:
		line.add_point(_cubic_bezier(input, p1, p2, output, n*.1))
	line.add_point(output)

func _cubic_bezier(p0: Vector2, p1: Vector2, p2: Vector2, p3: Vector2, t: float):
	var q0 = p0.linear_interpolate(p1, t)
	var q1 = p1.linear_interpolate(p2, t)
	var q2 = p2.linear_interpolate(p3, t)

	var r0 = q0.linear_interpolate(q1, t)
	var r1 = q1.linear_interpolate(q2, t)

	var s = r0.linear_interpolate(r1, t)
	return s

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
