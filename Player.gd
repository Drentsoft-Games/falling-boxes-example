extends KinematicBody2D

var move_speed = 500.0

func _physics_process(delta):
	var dir: Vector2
	dir.x += Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	dir = dir.normalized()
	
	move_and_slide(dir * move_speed, Vector2.ZERO, false, 4, 0.785398, false)
