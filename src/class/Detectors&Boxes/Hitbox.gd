extends Area2D
signal hit()

# Called when the node enters the scene tree for the first time.



func _on_area_entered(hurtbox):
	emit_signal("hit")
	hurtbox.emit_signal("hurt")
