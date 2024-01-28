extends RigidBody2D


export var min_speed = 150
export var max_speed = 250

func _ready():
	var mob_types = $AnimatedSprite.get_animation_names()
	print(str(mob_types))
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
	


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
