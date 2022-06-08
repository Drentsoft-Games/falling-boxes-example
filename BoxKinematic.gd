extends KinematicBody2D

var vel: Vector2 = Vector2.ZERO
var max_slides = 0

func _process(delta):
	$Label.text = "%s" % max_slides

func _physics_process(delta):
	if $Area2D.get_overlapping_bodies().size() <= 1:
		max_slides = 1
		vel.y += 1500 * delta
	else:
		max_slides = 0
		vel.y = 0
	vel = move_and_slide(vel, Vector2.UP, false, max_slides)

func _on_Box_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.pressed:
			queue_free()
