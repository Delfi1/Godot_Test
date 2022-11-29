extends Node2D

var game = preload("res://Scenes/Game.tscn").instance();

func _on_Play_Button_pressed():
	get_tree().get_root().add_child(game)
	hide()
