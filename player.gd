extends CharacterBody2D

var speed = 350.0
var jump_velocity = -950.0
var gravity = 960
var dash_speed = 700
var dash_time = 0.15
var is_dashing = false
var dash_timer = 0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta * 3

	var direction = Input.get_axis("left","right")

	if not is_dashing:
		velocity.x = direction * speed

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity

	if Input.is_action_just_pressed("dash") and not is_dashing:
		is_dashing = true
		dash_timer = dash_time
		velocity.x = direction * dash_speed

	if is_dashing:
		dash_timer -= delta
		if dash_timer <= 0:
			is_dashing = false

	move_and_slide()
