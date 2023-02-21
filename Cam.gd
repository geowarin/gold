extends Spatial


func _ready():
	pass


func _process(delta):
	rotate(Vector3.UP, delta)
