extends MarginContainer

@onready var _text: RichTextLabel = $RichTextLabel

func set_content(speaker: String, text: String, passive_check: String = "") -> void:
	_text.text = "[color=#f00]%s[/color] %s - %s" % [
		speaker,
		"" if passive_check == "" else "[color=#0f0]%s[/color]" % passive_check,
		text
	]
