extends Node
var conn = StreamPeerTCP.new()
const server_IP = "192.168.43.168"
const server_PORT = 8999
var revise_thread:Thread
# Called when the node enters the scene tree for the first time.
func _ready():
	#var server =conn.connect_to_host(server_IP,server_PORT)
	#if server==OK:
		#print("connected server")
		#revise_thread = Thread.new()
		#revise_thread.start(await tcp_process())
	pass
func tcp_process():
	while true:
		var state = conn.get_status()
		if state == StreamPeerTCP.STATUS_NONE:
			print("")
			break
		elif state == StreamPeerTCP.STATUS_CONNECTING:
			print("")
			
		elif state == StreamPeerTCP.STATUS_CONNECTED:
			print("")
		elif state == StreamPeerTCP.STATUS_ERROR:
			print("")
			break
		await Engine.get_main_loop().process_frame
		conn.poll()
	print("")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
