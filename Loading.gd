extends Control

@export var loading_bar:ProgressBar
var scene_path :String
var progress:Array
var update :float=0.0
func _ready():
	scene_path = "res://src/class/scenes/main_scene.tscn"
	ResourceLoader.load_threaded_get(scene_path)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	

	ResourceLoader.load_threaded_get_status(scene_path,progress)
	loading_bar.value = progress[0]
	if loading_bar.value >=1.0:
		get_tree().change_scene_to_packed(
			ResourceLoader.load_threaded_get(scene_path)
		)
