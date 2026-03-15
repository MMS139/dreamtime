extends Node2D

@export var player_scene : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_player()

func spawn_player():
	var player = player_scene.instantiate()
	player.position = $SpawnPoint.position
	add_child(player)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
