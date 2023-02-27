extends AnimationPlayer

const ADD_SCORE_ANIMATION = 'addScore'

var addedAmount : int = 0

func _ready():
	$Label.rect_size = get_parent().rect_size
	playAnimation()

func setAddedAmount(amount : int) -> void:
	addedAmount = amount
	if addedAmount >= 0:
		$Label.text = '+'+str(amount)
		$Label.self_modulate = Color(0, 1, 0, 1)
	else:
		$Label.text = str(amount)
		$Label.self_modulate  = Color(1, 0, 0, 1)

func playAnimation() -> void:
	current_animation = ADD_SCORE_ANIMATION
	play()

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == ADD_SCORE_ANIMATION:
		queue_free()
