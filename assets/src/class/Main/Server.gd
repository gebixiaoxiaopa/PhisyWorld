extends Node
var network = ENetMultiplayerPeer.new()
var port = 114514
var max_player =114514
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func StartServer():
	network.create_server(port,max_player)
	multiplayer.multiplayer_peer=network
