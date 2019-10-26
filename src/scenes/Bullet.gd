extends Node2D

export(Vector2) var direction = Vector2.RIGHT
export(float) var damage = 1
export(float) var speed = 10

func _ready():
	pass


func _process(delta):
	position.x += direction.x * speed * delta
	position.y = direction.y * speed * delta


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
