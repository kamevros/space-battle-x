extends KinematicBody2D
class_name Spaceship

export(String, "test", "test2") var type
export(String, "one", "two") var player
export(float) var health_point
export(float) var energy_point
export(float) var speed = 250
export(float) var attack_cost
export(float) var defence_value
export(NodePath) var opponent_spaceship_path
export var flipped = false

onready var direction : Vector2 = Vector2.ZERO

var opponent_spaceship

func _ready():
	opponent_spaceship = get_node(opponent_spaceship_path)
		
	
func _process(delta):
	direction = get_input()
	
	$AnimatedSprite.set_flip_h(flipped)

	if((position.x > opponent_spaceship.position.x && !flipped) || (position.x < opponent_spaceship.position.x && flipped)):
		flipped = !flipped
		
	
func _physics_process(delta):
	move_and_slide(direction * speed)
	position = clamp_player_viewport()
	
	
func get_input() -> Vector2:
	direction = Vector2()

	if Input.is_action_pressed("player_" + player + "_up"):
		direction.y -= 1
	if Input.is_action_pressed("player_" + player + "_left"):
		direction.x -= 1
	if Input.is_action_pressed("player_" + player + "_down"):
		direction.y += 1
	if Input.is_action_pressed("player_" + player + "_right"):
		direction.x += 1
		
	return direction.normalized()
	

func clamp_player_viewport() -> Vector2:
	var size : Vector2 = $AnimatedSprite.frames.get_frame("default", 0).get_size()
	
	position.x = clamp(position.x, 0 + size.x / 2, get_viewport().size.x - size.x / 2)
	position.y = clamp(position.y, 0 + size.y / 2, get_viewport().size.y - size.y / 2)
	
	return position
