extends Control
@onready var animation_player = $AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



		


func _on_animation_player_animation_finished(anim_name):
	if anim_name=="fade_out":
		$SplashSceen/AnimationPlayer.play("fade_in")
	if anim_name=="fade_in":
		$SplashSceen/Panel/Label/TextureRect.hide()
		$SplashSceen/Panel/Label2.hide()
		$SplashSceen/Panel/Label.hide()
		$SplashSceen/Panel/Label3.show()
		
		$SplashSceen/AnimationPlayer.play("fade_out2")
	if anim_name=="fade_out2":
		get_tree().change_scene_to_file("res://src/class/gui/main_menu_without_bs.tscn")
