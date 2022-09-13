extends Node2D

var game = preload("res://scenes/Game.tscn")

func _ready() -> void:
	pass # Replace with function body.

func _on_Quit_pressed() -> void:
	get_tree().quit()

func _on_Start_pressed() -> void:
	add_child(game.instance())

func _on_Settings_pressed() -> void:
	get_node("MenuNode").move(Vector2(-576, 0))
	get_node("SettingsNode").move(Vector2(0, 0))
	
func _on_Back_pressed() -> void:
	get_node("MenuNode").move(Vector2(0, 0))
	get_node("SettingsNode").move(Vector2(576, 0))
