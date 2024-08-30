class_name Stats
extends Node
@export var LeastHealthEntropie:int = 0
@export var MaxHealthEntropie : int
		
var CurrentHealthEntropie :int =LeastHealthEntropie
func _process(delta):
	if CurrentHealthEntropie>MaxHealthEntropie:
		CurrentHealthEntropie=MaxHealthEntropie
	if CurrentHealthEntropie <0:
		CurrentHealthEntropie=0
