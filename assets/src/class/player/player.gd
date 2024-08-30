class_name Player

extends CharacterBody2D


var dir = Vector2.ZERO
var speed = 600
var is_moving = false
var tags:Array = []
@onready var stats =$Stats
@onready var js = $"../CanvasModulate/MobileUI/Joystick"

func _process(_delta):
	var direction = js.posVec
	if direction:
		velocity = direction * speed
		move_and_slide()
	else:
		velocity = Vector2(0,0)
	if velocity!=Vector2.ZERO:
		$AnimationPlayer.play("Walk")
	else:
		$AnimationPlayer.stop()
	
func _physics_process(delta):
	var input_vec = Vector2.ZERO
	input_vec.x = Input.get_action_strength("move_right")-Input.get_action_strength("move_left")
	input_vec.y = Input.get_action_strength("move_down")-Input.get_action_strength("move_up")
	velocity = input_vec*speed
	if velocity!=Vector2.ZERO or js.moving:
		$AnimationPlayer.play("Walk")
	else:
		$AnimationPlayer.stop()
	if js.moving:
		$AnimationPlayer.play("Walk")
	move_and_slide()
@onready var animation_player = $AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	TagManager.CreateTag("Man")


# Called every frame. 'delta' is the elapsed time since the previous frame.









func _on_plot_detector_plot_start():
	print("plot start")

	
