extends KinematicBody2D

var speed = 250;
var jumpForce = 200;
var gravity = 400;
var jump = false;
var velocity = Vector2();

func _ready():
	velocity.y += gravity; 

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed;
	elif Input.is_action_pressed("ui_right"):
		velocity.x = speed;
	else:
		velocity.x = 0;
	
	if velocity:
		velocity.y += gravity * delta; 
		move_and_slide(velocity, Vector2.UP);
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = -jumpForce;
