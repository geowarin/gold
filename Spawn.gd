extends Position3D


var gold: PackedScene

func _ready():
	gold = preload("res://assets/gold.tscn")


func _on_Timer_timeout():
	var instance: Node = gold.instance()
	instance.rotate_x(randf())
	add_child(instance)
	
	var golds = get_tree().get_nodes_in_group("gold")
	for g in golds:
		if (g.global_transform.origin.distance_to(self.global_transform.origin) > 20):
			g.queue_free()
