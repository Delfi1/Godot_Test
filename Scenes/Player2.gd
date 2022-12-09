extends KinematicBody2D

var speed = 250;
var velocity = Vector2();


func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed;
	elif Input.is_action_pressed("ui_right"):
		velocity.x = speed;
	if Input.is_action_pressed("ui_down"):
		velocity.y = -speed;
	elif Input.is_action_pressed("ui_up"):
		velocity.y = speed;
