extends Spatial

const random_spawn_distance = 5

func _ready():
	make_kirb()

func make_kirb():
	var kirb = preload("res://Kirbo/Kirbo.tscn").instance()
	randomize()
	kirb.global_transform.origin = Vector3(rand_range(-random_spawn_distance, random_spawn_distance), 30, rand_range(-random_spawn_distance, random_spawn_distance))
	add_child(kirb)
	yield(get_tree().create_timer(0.1), "timeout")
	make_kirb()
