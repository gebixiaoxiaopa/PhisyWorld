extends Control
signal enter
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_just_pressed("EnterGame"):
		enter.emit()
	if Input.is_action_just_pressed("esc"):
		get_tree().quit()
								
					


func _on_enter():
	await (get_tree().create_timer(0.5,1).timeout)
	$AnimationPlayer.play("enter")

func _on_animation_player_animation_finished(anim_name):
	if anim_name =="enter":
		get_tree().change_scene_to_file("res://src/class/scenes/main_scene.tscn")
	
