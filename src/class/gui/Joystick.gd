extends Area2D
var distance
var dir:Vector2
@onready var Ring = $Ring
@onready var Stick = $Stick
@onready var radius = $CollisionShape2D.shape.radius
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _input(event):
	if event is InputEventScreenTouch:
		if event.is_pressed():
			distance=position.distance_to(event.position)
			if distance<radius:
				Stick.position=event.position
				dir=(position.direction_to(Stick.position)*distance) / radius
		else:
			Stick.position = Vector2.ZERO
			dir=Vector2.ZERO
	if event is InputEventScreenDrag:
		distance=position.distance_to(event.position)
		if distance<radius:
			Stick.position=event.position
			dir=(position.direction_to(Stick.position)*distance)/radius
		else:
			dir = position.direction_to(event.position)
			Stick.position=dir*radius
