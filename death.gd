extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	visible=false

func _physics_process(delta):
	if global.lives<=0:
		visible=true
		get_tree().paused=true
		
		
		
		


func _on_TouchScreenButton_pressed():
	global.lives=5
	global.points=0
	global.speed=1
	visible=false
	get_tree().paused=false
	get_tree().reload_current_scene()
