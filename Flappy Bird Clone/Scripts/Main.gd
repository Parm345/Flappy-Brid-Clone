extends Node2D

export (Texture) var bgDay
export (Texture) var bgNight

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var rng = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	var bgNumber = rng.randi_range(1, 2)
	
	match(bgNumber):
		1:
			$Background.texture = bgDay
		2: 
			$Background.texture = bgNight


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
