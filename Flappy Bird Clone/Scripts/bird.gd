extends KinematicBody2D

export var gravity = 400
export var jump = 200


# Declare member variables here. Examples:
var velocity = Vector2()
var flying = false
var rot = 0

# Called when the node enters the scene tree for the first time.
#func _ready():
	#var rng = RandomNumberGenerator.new()
	#rng.randomize()
	#var randInt = rng.randi_range(3, 1)
	#print(randInt)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity.y += delta*gravity
	
	
	if Input.is_action_pressed("ui_select"):
		$AnimatedSprite.play('Fly')
		if flying == false:
			velocity.y = -jump
			rot = deg2rad(-40)
		flying = true
	elif $AnimatedSprite.animation == 'Fly' and $AnimatedSprite.frame == 3:
		$AnimatedSprite.play('Idle')
		flying = false
	
	if rot != deg2rad(-40):
		rotation = rot
	if rad2deg(rotation) != 90:
		rot += 1*delta
	
	move_and_slide(velocity, Vector2(0,-1))
		
	
	


	
