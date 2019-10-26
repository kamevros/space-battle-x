extends KinematicBody2D
class_name Spaceship

enum SpaceshipType { TEST, TEST2 }
enum Player { ONE, TWO }

export(SpaceshipType) var type
export(Player) var player
export(float) var health_point
export(float) var energy_point
export(float) var speed
export(float) var attack_cost
export(float) var defence_value

func _ready():
	pass
	
	
func _process(delta):
	pass
	
	
func _physics_process(delta):
	pass
