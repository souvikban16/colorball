extends KinematicBody2D
var motion=Vector2()
var gravity=5
var jump=250
var bodies

func _ready():
	randomize()
	global.status =int (rand_range(0,4))
	print (global.status)
	if global.status==0:
		$icon.modulate=Color(1,0,0)
	elif global.status==1:
		$icon.modulate=Color(0,0,1)
	elif global.status==2:
		$icon.modulate=Color(1,1,0)
	elif global.status==3:
		$icon.modulate=Color(0,1,0)
#
func _physics_process(delta):
	motion.y+=gravity
	if Input.is_action_just_pressed("up"):
		motion.y=-jump

	motion=move_and_slide(motion,Vector2(0,-1))
