extends Node
signal pause(paused:bool)
var System = OS
var pressed = false
@onready var paused = $CanvasLayer3/pause_menu
@onready var animation_player = $AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#if System.get_name()!="Android":
		#$CanvasModulate/MobileUI/Joystick.hide()
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass




func _on_hitbox_hit():
	print("man")
func _unhandled_input(event):
	if event.is_action_pressed("esc"):
		pressed=!pressed
		pause.emit(pressed)
	
