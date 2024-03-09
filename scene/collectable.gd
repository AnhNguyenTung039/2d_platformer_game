extends Area2D

@onready var game_manager = %GameManager

func _on_body_entered(body):
	# Add condition if the character is main then disapear the collectable
	if (body.name == "CharacterBody2D"):
		queue_free()
		game_manager.add_point()
