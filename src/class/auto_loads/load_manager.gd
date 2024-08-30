extends Node
signal progress_changed (progress)
signal load_done
var load_screen_path:String ="res://src/class/gui/loading.tscn"
var load_screen = load(load_screen_path)
var loaded_resource : PackedScene
var scene_path:String
var progress:Array = []
var use_sub_threads:bool = true
# Called when the node enters the scene tree for the first time.
func load_scene(_scene_path:String):
	scene_path=_scene_path
	var new_loading_screen = load_screen.instantiate()
	get_tree().root.add_child(new_loading_screen)
	progress_changed.connect(new_loading_screen.upd_progress_bar)
	load_done.connect(new_loading_screen.start_ani)
	await  Signal(new_loading_screen,"loading_screen_has_full_couverage")
	start_load()
func start_load():
	var state = ResourceLoader.load_threaded_request(scene_path,"",use_sub_threads)
	if state==OK:
		set_process(true)
		
func _process(_delta):
	var load_status = ResourceLoader.load_threaded_get_status(scene_path,progress)
	match load_status:
		0,2:
			set_process(false)
			return
		1:
			emit_signal("progress_changed",progress[0])
		3:
			loaded_resource = ResourceLoader.load_threaded_get(scene_path)
			emit_signal("progress_changed",1.0)
			emit_signal("load_done")
			get_tree().change_scene_to_packed(loaded_resource)
