extends CharacterBody2D
@onready var stats =$Stats
var js = Vector2()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var input_vec = Vector2.ZERO
	input_vec.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	input_vec.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	velocity = input_vec*300
	if Input.is_action_just_pressed("sprint"):
		velocity*2
	move_and_slide()
	

func _on_player_component_normal_atack():
	print("1")


func _on_player_component_skill_first_cast(String):
	print(String)


func _on_player_component_skill_second_cast(String):
	pass # Replace with function body.


func _on_virtual_joystick_analogic_chage(move):
	js =move
	velocity = 300*js
	move_and_slide()
func _on_virtual_joystick_analogic_released():
	pass # Replace with function body.


func _on_plot_detector_plot_start():
	print("plot start")
