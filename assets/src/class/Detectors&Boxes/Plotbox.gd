extends Area2D

signal plot_start()

# Called when the node enters the scene tree for the first time.



func _on_area_entered(playerbox):
	emit_signal("plot_start")
	
