extends Light2D

var energyMin = 0.2;
var energyMax = 0.35;
var sinOffset = 0;

func _ready():
	randomize()
	pass # Replace with function body.

func _process(delta):
	sinOffset += delta * rand_range(-2, 3);
	energy = energyMin + abs(sin(sinOffset)*(energyMax - energyMin))
