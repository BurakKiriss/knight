extends Area2D

@onready var game_menager = %GameMenager
@onready var pickup_sound = $pickupSound
@onready var animation_player = $AnimationPlayer




func _on_body_entered(body):
	if body.name=="player":
		game_menager.addPoint()
		animation_player.play("pickup")
