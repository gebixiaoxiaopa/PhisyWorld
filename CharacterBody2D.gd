extends  Player

func _process(_delta):
	var direction = js.posVec
	if direction:
		velocity = direction * speed
	else:
		velocity = Vector2(0,0)
	
	
	move_and_slide()

# Called when the node enters the scene tree for the first time.
func _ready():
	TagManager.CreateTag("Man")


# Called every frame. 'delta' is the elapsed time since the previous frame.

	








func _on_plot_detector_plot_start():
	print("plot start")



func _on_player_component_normal_atack():
	print("0")


func _on_player_component_skill_second_cast(String):
	print("2")


func _on_player_component_skill_first_cast(String):
	print("1")
