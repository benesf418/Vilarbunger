extends Light2D

var energyMin = 0.15;
var energyMax = 0.3;
var sinOffset = 0;

func _ready():
	randomize()
	pass # Replace with function body.

func _process(delta):
	sinOffset += rand_range(-0.005, 0.01);
	energy = energyMin + abs(sin(sinOffset)*(energyMax - energyMin))
