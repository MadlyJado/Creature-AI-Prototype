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

# When the game loads,
# the bool isWandering is set to true
# Triggering the _process function to make the creature run around in a path
# and set_process is also set to true, which makes it so the path does it's thing.
func _ready():
	isWandering = true
	set_process(true)

func _process(delta):
	# Checks if the player doesn't see the creature and the creature is currently wandering
	if isWandering and isInPlayersSight == false:
		# If creature is wandering then follow it's set path
		follow.set_offset(follow.get_offset() + 100 * delta)
		animationplayer.play("test")
	elif $CreatureKinematic.is_colliding():
		# If the creaturekinematic is colliding with another collider(The player's "eyes".)
		# Then set the bool isInPlayersSight to true
		isInPlayersSight = true
	elif isInPlayersSight:
		# If the player sees the creature
		# Then intiate a simulated "coin flip"(50/50 chance.)
		# If it lands "0"(Maybe heads in this case.) the creature will run along with the player
		# If it lands on a 1(Tails I guess in this case.) the creature will run away.
		# Later on we can scale the chances by giving the heads a more bigger chance than the tails
		# chance, therefore giving it the ability to kinda gain a skill in a simple way.
		runAwayOrComeToPlayer = randi() % 1 + 1;
		if runAwayOrComeToPlayer == 0:
			if $CreatureKinematic.get_collider().name == "Eyes":
				direction = ($PlayerKinematic.get_pos() - $CreatureKinematic.get_pos().normalized())
				$CreatureKinematic.set_pos($CreatureKinematic.get_pos() + direction * 5)
		elif runAwayOrComeToPlayer == 1:
			if $CreatureKinematic.get_collider().name == "Eyes":
				direction = (-$CreatureKinematic.get_pos())
				$CreatureKinematic.set_pos($CreatureKinematic.get_pos() + direction * 5)

