extends Node
var System = OS

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass
#	if System.get_name()=="Windows":
#		$CanvasModulate/MobileUI/VirtualJoystick.queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("esc"):
		print("paused")
		$paused.visible=true
