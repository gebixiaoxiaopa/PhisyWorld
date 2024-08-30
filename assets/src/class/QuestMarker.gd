extends Control
@export var quest_target_position:Vector2
@onready var texture_rect = $TextureRect
var camera_zoom=get_viewport().get_camera_2d().zoom
const REQUEST_ICON = preload("res://assets/textures/gui/request_icon.png")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if quest_target_position==Vector2.ZERO:return
	var target_screen_position = (quest_target_position - get_camera_rect().position)*1.5
	if target_on_screen():
		pass
	else :
		set_screen_position(quest_target_position)
func get_camera_rect():
	var pos = get_viewport().get_camera_2d().get_screen_center_position()

	var screen_size = get_viewport_rect().size/camera_zoom
	return Rect2(pos-screen_size/2,screen_size)
func target_on_screen():
	return get_camera_rect().has_point(quest_target_position)
func set_screen_position(screen_target_position):
	var screen_size =get_viewport_rect().size
	var borderOffset = 50
	var target_position = screen_target_position
	if target_position.x<borderOffset:
		target_position.x = borderOffset
	if target_position.x>screen_size.x-borderOffset:
		target_position.x = screen_size.x-borderOffset
	if target_position.y<borderOffset:
		target_position.y = borderOffset
	if target_position.y>screen_size.y-borderOffset:
		target_position.y = screen_size.y-borderOffset
	global_position =target_position
