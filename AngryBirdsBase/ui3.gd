extends Control

var txtScore : int
var maxScore : int
var alreadyRun : bool

func add_score():
	txtScore += 0.5
	if txtScore == maxScore && alreadyRun == false:
		txtScore = 0
		alreadyRun = true
		get_tree().change_scene_to_file("C:/Users/AtomB/Downloads/AngryBirdsBase/scenes/menu.tscn")
	else:
		var sus_scene = load("res://scripts/sus.tscn")
		var sus = sus_scene.instantiate()
		Game.add_child(sus)
		sus.position = Vector2(randi() % 1100 + 0, randi() % 600 + 50)
	pass



# Called when the node enters the scene tree for the first time.
func _ready():
	txtScore = 0
	maxScore = 3
	alreadyRun = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
