extends Control

# Path to your main game scene
@export var next_level = "res://levels/level1.tscn"

func _ready():
	$VBoxContainer/StartButton.pressed.connect(start_game)
	$VBoxContainer/QuitButton.pressed.connect(quit_game)
	$VBoxContainer/OptionsButton.pressed.connect(open_options)
	$VBoxContainer/LevelsButton.pressed.connect(open_levels)

func start_game():
	get_tree().change_scene_to_file(next_level)

func quit_game():
	get_tree().quit()

# Optional
func open_options():
	print("Options menu would open here")

func open_levels():
	print("Open Levels")
