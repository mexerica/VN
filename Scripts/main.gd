extends Node2D

@onready var _dialogue_drawer = $Interface/MarginContainer

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"): _dialogue_drawer.next()
