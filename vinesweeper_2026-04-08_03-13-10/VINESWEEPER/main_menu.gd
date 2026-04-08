extends Control

@onready var options: Panel = $Options
@onready var margin_container: MarginContainer = $MarginContainer
@onready var v_box_container: VBoxContainer = $MarginContainer/HBoxContainer/VBoxContainer
@onready var center_container: CenterContainer = $MarginContainer/HBoxContainer/CenterContainer




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	options.visible = false
	v_box_container.visible = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass



func _continue_button_pressed() -> void:
	pass # Replace with function body.
	

func _newgame_button_pressed() -> void:
	pass # Replace with function body.


func _options_button_pressed() -> void:
	options.visible = true
	margin_container.visible = false
	pass # Replace with function body.


func _leave_options():
	options.visible = false
	margin_container.visible = true


func _on_quit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.


func _input(event):
	if event.is_action_pressed("ui_cancel") and options.visible == true:
		options.visible = false
		margin_container.visible = true
