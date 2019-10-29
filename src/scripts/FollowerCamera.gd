extends Camera2D

var camera_rect : = Rect2()

func _process(delta : float) -> void:
	if get_child_count() > 0:
		camera_rect = Rect2(get_child(0).global_position, Vector2())
		
		for i in get_child_count():
			if i == 0:
				continue
			camera_rect = camera_rect.expand(get_child(i).global_position)
			
		update()

			
func _draw():
	print_debug(camera_rect)
	draw_rect(camera_rect, Color("#ffffff"), false)
	
	

