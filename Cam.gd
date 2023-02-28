extends Spatial


func _ready():
	pass


func _process(delta):
	rotate(Vector3.UP, delta * 0.5)
#	$Camera.translate_object_local(-$Camera.transform.basis.x * delta)
