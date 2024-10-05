extends RigidBody2D

#TODO: You'll probably need an export_var for the particle effect here

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


#TODO:
#this will only work if you set the rigidbody to "contact monitoring"
#and set max contacts to higher than 0
func _on_body_entered(body):
	var particles_scene = load("res://scenes/gpu_particles_2d.tscn")
	var particles = particles_scene.instantiate()
	Game.add_child(particles)
	particles.position = Vector2(self.position.x, self.position.y)
	particles.one_shot = true
	Ui.add_score()
	self.queue_free()
	#TODO:
	#create a particle effect at this object's location
	#find the game UI script and send it a message that the score has increased
	#and then destroy this object using queue_free
	pass # Replace with function body.


func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	#print("OK")
	pass # Replace with function body.
