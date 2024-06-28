extends TouchScreenButton
var pressing =false
var maxLength=70
var deadzone =5
@onready var parent = $".."


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if pressing:
		if get_global_mouse_position().distance_to(parent.global_position)<=maxLength:
			global_position=get_global_mouse_position()
		else :
			global_position =lerp(global_position,parent.global_position,delta*10)

func _on_pressed():
	pressing=true


func _on_released():
	pressing=false
