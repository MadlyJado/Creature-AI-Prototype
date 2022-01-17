extends Path2D

onready var follow = get_node("follow")
onready var animationplayer = get_node("follow/CreatureKinematic/CreatureTest/AnimationTest")
var direction = Vector2()

var isRunningAway = false
var isGettingBait = false
var isWandering = false
var isInZone = false
var isInPlayersSight = false
var runAwayOrComeToPlayer = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	isWandering = true
	set_process(true)

func _process(delta):
	if isWandering and isInPlayersSight == false:
		follow.set_offset(follow.get_offset() + 100 * delta)
		animationplayer.play("test")
	elif $CreatureKinematic.is_colliding():
		isInPlayersSight = true
	elif isInPlayersSight:
		runAwayOrComeToPlayer = randi() % 1 + 1;
		if runAwayOrComeToPlayer == 0:
			if $CreatureKinematic.get_collider().name == "Eyes":
				direction = ($PlayerKinematic.get_pos() - $CreatureKinematic.get_pos().normalized())
				$CreatureKinematic.set_pos($CreatureKinematic.get_pos() + direction * 5)
		elif runAwayOrComeToPlayer == 1:
			if $CreatureKinematic.get_collider().name == "Eyes":
				direction = (-$CreatureKinematic.get_pos())
				$CreatureKinematic.set_pos($CreatureKinematic.get_pos() + direction * 5)

