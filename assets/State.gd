extends Control
@export var stats:PackedScene
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var player = get_tree().get_first_node_in_group("Player") as Node2D
	$Panel/Panel/ProgressBar.value = player.stats.CurrentHealthEntropie
	$Panel/Panel/ProgressBar.max_value=$"../../plannet_searcher".stats.MaxHealthEntropie
