extends Area2D

@onready var timer = $Timer
@onready var audio_stream_player = $AudioStreamPlayer2D
@onready var animated_sprite = $AnimatedSprite2D

const SPEED = 60
func _on_body_entered(body):
	if body.name== "player":
		Engine.time_scale = 0.5
		audio_stream_player.play()
		
		body.get_node("CollisionShape2D").queue_free()
		timer.start()
		
		




func _on_timer_timeout():
	Engine.time_scale=1
	get_tree().reload_current_scene()
