extends Control
@onready var ani_player =$AnimationPlayer 
signal loading_screen_has_full_couverage
@onready var progress_bar = $Panel/ProgressBar

func upd_progress_bar(new_value:float):
	var tween = get_tree().create_tween()
	tween.tween_property(progress_bar,"value",new_value*100,0)
func start_ani():
	await Signal (ani_player,"animation_finished")
	ani_player.play("end")
	await Signal (ani_player,"animation_finished")
	queue_free()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
