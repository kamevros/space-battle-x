extends CanvasLayer

export(NodePath) var spaceship1_path
export(NodePath) var spaceship2_path

var spaceship1
var spaceship2

func _ready():
	spaceship1 = get_node(spaceship1_path)
	spaceship2 = get_node(spaceship2_path)
	
func _process(delta):
	var p1_x = round(spaceship1.position.x)
	var p1_y = round(spaceship1.position.y)
	var p2_x = round(spaceship2.position.x)
	var p2_y = round(spaceship2.position.y)
	
	var format_string = "Position P1:\n{0}, {1}\nPosition P2:\n{2}, {3}"
	
	$Panel/Label.text = format_string.format([p1_x, p1_y, p2_x, p2_y])
