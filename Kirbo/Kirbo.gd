extends Spatial

func _ready():
	yield(get_tree().create_timer(12), "timeout")
	queue_free()
