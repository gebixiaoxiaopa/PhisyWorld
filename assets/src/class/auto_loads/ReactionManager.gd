extends Node
@export var PE:Array
func _process(delta):
	if PE.has("m") and PE.has("s"):
		PE.pop_at(PE.find("s",0))
		PE.pop_at(PE.find("m",0))
		print(PE)
		
		
		
			
