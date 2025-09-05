extends CharacterBody2D

@onready var hit_sound: AudioStreamPlayer2D = $Hit

func _ready() -> void:
	self.velocity = Vector2(-3,1)

func _process(delta: float) -> void:
	var collision = move_and_collide(self.velocity)

 
	if collision:
		self.velocity = velocity.bounce(collision.get_normal())
		$Hit.play()
	
