extends Node
var tags:Array=[]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func CreateTag(_TagName:StringName):
	self.tags.append(_TagName)
func DeleteTag(_TagName:StringName):
	self.tags.erase(_TagName)
