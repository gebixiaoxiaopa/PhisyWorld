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
	LoadManager.load_scene("res://src/class/scenes/main_scene.tscn")



	
