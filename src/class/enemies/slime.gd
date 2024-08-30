extends SlimeBody
const SLIME = preload("res://src/class/enemies/slime.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$GrowTimer.wait_time = grow_time
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scale = size_modifier*scale


func _on_grow_timer_timeout():
	if can_grow == true:
		if size_modifier ==0.5:
			size_modifier = 2
		
