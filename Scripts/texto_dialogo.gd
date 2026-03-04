extends MarginContainer

@onready var _text: RichTextLabel = $RichTextLabel

func set_content(speaker: String, text: String, passive_check: String = "") -> void:
	var prefix = speaker + passive_check + " - "
	_text.text = prefix + text

	await get_tree().process_frame 

	var line_break_position = _text.get_line_range(0).y
	line_break_position = line_break_position - prefix.length()

	var text_with_line_indent = text.insert(line_break_position, "[indent]")

	_text.text = "[color=#FF3CB4]%s[/color] [color=#4FF489]%s[/color] - %s" % [
		speaker, passive_check, text_with_line_indent
	]
