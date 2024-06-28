extends ParallaxBackground
@onready var parallax_layer = $ParallaxLayer
@onready var parallax_layer_2 = $ParallaxLayer2
@onready var parallax_layer_3 = $ParallaxLayer3
var speed = 1.5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_parent().name =="MainMenuWithoutBs":
		parallax_layer_2.motion_offset.x-=speed
		parallax_layer_3.motion_offset.x-=speed*2


func _on_main_menu_without_bs_enter():
	speed=speed*4
