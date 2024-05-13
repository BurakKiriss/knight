extends Node2D


@onready var music = $Music




	

func _on_area_2d_body_entered(body):
	if body.name=="player":
		
		get_tree().change_scene_to_file("res://scenes/world_two.tscn")
