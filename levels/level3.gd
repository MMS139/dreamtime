extends Node2D

@export var player_scene : PackedScene
var player_instance : Node = null

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_player()
	player_instance.gravity = 960

func spawn_player():
	player_instance = player_scene.instantiate()
	player_instance.position = $SpawnPoint.position
	add_child(player_instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
