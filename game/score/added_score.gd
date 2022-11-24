extends Label

const ADD_SCORE_ANIMATION = 'addScore'

var addedAmount : int = 0

func _ready():
	rect_size = get_parent().rect_size
	playAnimation()

func setAddedAmount(amount : int) -> void:
	addedAmount = amount
	if addedAmount >= 0:
		self_modulate = Color(0, 1, 0, 1)
	else:
		self_modulate  = Color(1, 0, 0, 1)

func playAnimation() -> void:
	$AnimationPlayer.current_animation = ADD_SCORE_ANIMATION
	$AnimationPlayer.play()

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == ADD_SCORE_ANIMATION:
		queue_free()
