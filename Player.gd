extends KinematicBody2D

var velocity = Vector2();
var Floor = Vector2(0, -1);
const speed = 200;
const gravity = 600;
const jump = 250;

func _ready():
	velocity.y += (gravity);

func _physics_process(delta):
	# Перемещение по Оx:
	if Input.is_action_pressed("ui_left"):
		# Ускорение влево
		velocity.x = -speed;
	elif Input.is_action_pressed("ui_right"):
		# Ускорение вправо
		velocity.x = speed;
	else:
		# Ускорение = 0
		velocity.x = 0;	

	if Input.is_action_just_pressed("ui_up") && is_on_floor():
		velocity.y = -jump;	
	
	if velocity:	
		velocity.y += (gravity * delta);
		move_and_slide(velocity, Floor);
