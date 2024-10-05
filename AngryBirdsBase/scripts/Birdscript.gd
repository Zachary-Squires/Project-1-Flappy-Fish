extends RigidBody2D

var tracking = false
var startPos = Vector2()
@onready var woodImpactSound = get_node("../woodImpact")
@onready var rockImpactSound = get_node("../rockImpact")

func _input(evt):
	if( evt is InputEventMouseButton and evt.button_index == MOUSE_BUTTON_LEFT):
		if(evt.is_pressed()):
			tracking = true
			startPos = evt.position
		else:
			tracking = false
			
			#TODO:
			#set a varible kickDir to the difference between startPos and evt.position
			var kickDir = startPos - evt.position 
			
			#set gravity_scale to 1
			gravity_scale = 1
			
			#apply a force in the kickDr direction * 300
			self.apply_impulse(kickDir * 5)
			
func woodImpact():
	woodImpactSound.play()
	
func rockImpact():
	rockImpactSound.play()
