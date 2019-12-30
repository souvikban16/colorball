extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	rotate(deg2rad(global.speed))


func _on_0_body_entered(body):
	if global.status==0:
		print("yes")
	else:
		global.lives-=1
		get_tree().reload_current_scene()


func _on_1_body_entered(body):
	if global.status==1:
		print("yes")
	else:
		global.lives-=1
		get_tree().reload_current_scene()


func _on_2_body_entered(body):
	if global.status==2:
		print("yes")
	else:
		global.lives-=1
		get_tree().reload_current_scene()

func _on_3_body_entered(body):
	if global.status==3:
		print("yes")
	else:
		global.lives-=1
		get_tree().reload_current_scene()


func _on_centre_body_entered(body):
	print("home")
	global.points+=1
	global.speed+=0.25
	get_tree().reload_current_scene()
