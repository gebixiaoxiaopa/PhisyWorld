extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_main_scene_pause(paused):
	if paused:
		show()
		$AnimationPlayer.play("fade_in")
		get_tree().paused=paused
	else :
		$AnimationPlayer.play("fade_out")
		await Signal ($AnimationPlayer,"animation_finished")
		get_tree().paused=paused
		hide()
