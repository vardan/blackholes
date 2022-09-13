extends Node2D

var flagged = false
var covered = true
var isBlackHole = false

func setObstacle():
	isBlackHole = true
	$BlackHole.show()

func flag():
	if flagged: 
		flagged = false
		$Flag.hide()
	else:
		flagged = true
		$Flag.show()
	
func cover():
	if covered:
		covered = false
		$Cover.hide()
	

func _on_Control_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.is_action_released("right_click"):
			flag()
		if event.is_action_pressed("left_click"):
			cover()
	if event is InputEventScreenTouch:
		if event.is_action_released("right_click"):
			flag()
		if event.is_action_pressed("left_click"):
			cover()
