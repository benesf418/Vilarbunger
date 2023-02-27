extends Label

var addedScoreScene = preload("res://game/score/added_score.tscn")
var score : int = 0

func _ready():
	displayScore()

func displayScore():
	text = 'score: ' + str(score)

func addScore(amount : int):
	score += amount
	displayScore()
	var addedScore = addedScoreScene.instance()
	addedScore.setAddedAmount(amount)
	add_child(addedScore);
