extends Node2D
onready var player = $player
var chances
var start = false
func _ready():
	player.position = $Position2D.position
	trace_the_player()

# warning-ignore:unused_argument
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
# warning-ignore:return_value_discarded
		get_tree().reload_current_scene()
	if start == true:
		trace_the_player()
		pass

func _on_player_area_entered(area):
	if area.is_in_group("enemys"):
# warning-ignore:return_value_discarded
		get_tree().reload_current_scene()
	elif area.is_in_group("start_line"):
		start = true
	elif area.is_in_group("end_line"):
		if start == true:
			return
		start = false

func trace_the_player():
	$enemys/main_enemy.path = $paths/path_for_main_enemy.get_simple_path($enemys/main_enemy.position,player.position)
	$enemys/second_enemy.path = $paths/path_for_second_enemy.get_simple_path($enemys/second_enemy.position,player.position)
	$enemys/third_enemy.path = $paths/path_for_third_enemy.get_simple_path($enemys/third_enemy.position,player.position)
	$enemys/fourth_enemy.path = $paths/path_for_fourth_enemy.get_simple_path($enemys/fourth_enemy.position,player.position)
