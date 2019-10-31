extends Node2D

var players : Array
var viewport_rect : = Rect2()
var camera_rect : = Rect2()

export(float, 0.1, 0.5) var zoom_offset : float = 0.3

func _ready():
	players = get_tree().get_nodes_in_group("players")
	viewport_rect = get_viewport_rect()
	

func _process(delta):
	var players_center : Vector2 = (players[0].position + players[1].position) / 2
	
	camera_rect = Rect2(players[0].position, Vector2())
	camera_rect = camera_rect.expand(players[1].position)
	
	position = players_center
	$FollowerCamera.zoom = calculate_zoom(camera_rect, viewport_rect.size)
	

func calculate_zoom(rect: Rect2, viewport_size: Vector2) -> Vector2:
	var max_zoom = max(
		max(0.75, rect.size.x / viewport_size.x + zoom_offset),
		max(0.75, rect.size.y / viewport_size.y + zoom_offset))
	return Vector2(max_zoom, max_zoom)