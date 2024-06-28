class_name Stats
extends Node
@export var LeastHealthEntropie:int = 0
@export var MaxHealthEntropie : int
		
@export var CurrentHealthEntropie :int =LeastHealthEntropie :
	set(v):
		v=clampi(v,0,MaxHealthEntropie)
		if CurrentHealthEntropie==v:
			return
		CurrentHealthEntropie=v
