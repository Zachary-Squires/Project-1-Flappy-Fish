extends Control

var txtScore : int
var maxScore : int
#TODO: Add a expert_var for fish object to spawn

func add_score():
	txtScore += 1
	#increase score
	#show new score on page
	
	#if score is at max - return to main page
	#if not at max - spawn a new fish
	if txtScore == 3:
		get_tree().change_scene_to_file("res://scenes/game2.tscn")
	elif txtScore == 6:
		get_tree().change_scene_to_file("res://level_3.tscn")
	elif txtScore == 9:
		txtScore = 0
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
	else:
		var sus_scene = load("res://scripts/sus.tscn")
		var sus = sus_scene.instantiate()
		Game.add_child(sus)
		sus.position = Vector2(randi() % 1100 + 0, randi() % 600 + 50)
	pass


#TODO: Add button to return to menu


# Called when the node enters the scene tree for the first time.
func _ready():
	txtScore = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
