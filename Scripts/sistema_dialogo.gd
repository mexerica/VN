extends MarginContainer

const DialogueEntry = preload("res://Nodes/texto_dialogo.tscn")

@onready var _dialogue_entries_container: Control = $PanelContainer/ScrollContainer/VBoxContainer
@onready var _scroll_container: ScrollContainer = $PanelContainer/ScrollContainer
@onready var _scroll_bar: ScrollBar = _scroll_container.get_v_scroll_bar()

func _ready() -> void: _scroll_bar.changed.connect(_on_scroll_bar_changed)

func next() -> void:
	var entry = DialogueEntry.instantiate()
	_dialogue_entries_container.add_child(entry)
	entry.set_content("Teste", "Isso é um teste")

func _on_scroll_bar_changed() -> void:
	var scroll_value = _scroll_bar.max_value
	if scroll_value != _scroll_container.scroll_vertical:
		_scroll_container.scroll_vertical = scroll_value
