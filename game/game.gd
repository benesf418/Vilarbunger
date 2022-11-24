extends Node2D

var aPressed = false;

func _ready():
	$Score.addScore(5)

func _process(delta):
	if !Input.is_key_pressed(KEY_A):
		aPressed = false

func _input(event):
	if event is InputEventKey:
		if event.scancode == KEY_A && !aPressed:
			$Score.addScore(5)
			aPressed = true
