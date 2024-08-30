extends Sprite2D

@onready var parent = $".."

var pressing = false

@export var maxLength = 70
var deadzone = 15

func _ready():
	pass

func _process(delta):
	if pressing:
		if get_global_mouse_position().distance_to(parent.global_position) <= maxLength:
			global_position = get_global_mouse_position()
		else:
			var angle = parent.global_position.angle_to_point(get_global_mouse_position())
			global_position.x = parent.global_position.x + cos(angle)*maxLength
			global_position.y = parent.global_position.y + sin(angle)*maxLength
		calculateVector()
		print(parent.posVec)
	else:
		global_position = lerp(global_position, parent.global_position, delta*50)
		parent.posVec = Vector2(0,0)
		
func calculateVector():
	if abs((global_position.x - parent.global_position.x)) >= deadzone:
		parent.posVec.x = (global_position.x - parent.global_position.x)/maxLength
	if abs((global_position.y - parent.global_position.y)) >= deadzone:
		parent.posVec.y = (global_position.y - parent.global_position.y)/maxLength
		



func _on_button_pressed():
	pressing = true
	parent.moving=pressing


func _on_button_released():
	pressing = false
	parent.moving=pressing
