class_name player_component
extends Node
@export var properties:Array= ["Sound","Light"]
signal NormalAtack
signal SkillFirstCast(String)
@export var max_charge:int
@export var current_charge :int
signal SkillSecondCast(String)
@export var property_index:int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.



	
func _unhandled_input(event):	
	if event.is_action_pressed("normal_atack"):
		NormalAtack.emit()
	if event.is_action_pressed("skill_first"):
		SkillFirstCast.emit(properties[property_index])
	if event.is_action_pressed("skill_second"):
		if current_charge==max_charge:
			SkillSecondCast.emit(properties[property_index])
		
	



	
