extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_animation_player_animation_finished(anim_name):
	if anim_name=="fade_out":
		$AnimationPlayer.play("fade_in")
	if anim_name=="fade_in":
		$Panel/Label/TextureRect.hide()
		$Panel/Label2.hide()
		$Panel/Label.hide()
		$Panel/Label3.show()
		
		$AnimationPlayer.play("fade_out2")
	
		get_tree().change_scene_to_file("res://src/class/gui/main_menu_without_bs.gd")
		
