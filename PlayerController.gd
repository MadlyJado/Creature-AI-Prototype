extends KinematicBody2D

onready var rigidbody = self;

export (int) var speed;
var Velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		Velocity.y = -speed;
	elif Input.is_action_pressed("ui_down"):
		Velocity.y = speed;
	elif Input.is_action_pressed("ui_left"):
		Velocity.x = -speed;
	elif Input.is_action_pressed("ui_right"):
		Velocity.x = speed;
	elif(!Input.is_action_pressed("ui_up") or !Input.is_action_pressed("ui_down") or !Input.is_action_pressed("ui_left") or !Input.is_action_pressed("ui_right")):
		Velocity.x = 0
		Velocity.y = 0
	move_and_slide(Velocity)
