extends KinematicBody2D

const Gravity = 10
const jump_force = -250
var velocity = Vector2()


func _physics_process(delta):
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = jump_force

	velocity.y += Gravity
	
	move_and_slide(velocity)
