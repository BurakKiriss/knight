extends Area2D

@onready var timer = $Timer
@onready var audio_stream_player = $AudioStreamPlayer2D




func _on_body_entered(body):
	if body.name== "player":
		audio_stream_player.play()
		timer.start()
		
		
	
		


func _on_timer_timeout():
	get_tree().reload_current_scene()
