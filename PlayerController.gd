extends KinematicBody2D

onready var rigidbody = self;

# make speed a changable variable in the editor
export (int) var speed;
# the velocity of the player, changes depending on player input
var Velocity = Vector2()

# Ready function doesn't really do anything
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	# If the w or a or s or d keys are pressed, move around depending on the key
	# in the negative x or positive x direction
	# or the negative y or positive y direction
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
