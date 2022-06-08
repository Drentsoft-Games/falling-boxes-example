extends Node2D

func _process(delta):
	if get_child_count() == 0:
		for i in range(6):
			var inst = preload("res://BoxKinematic.tscn").instance()
			inst.position.y += 65 * i
			add_child(inst)
