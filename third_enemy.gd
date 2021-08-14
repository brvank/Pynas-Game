extends Area2D

var path : = PoolVector2Array()
var distance_to_move
var distance_to_next_point
var distance_remaining
var speed =200
func _ready():
	pass
func _process(delta):
	distance_to_move = speed*delta
	while distance_to_move >0 and path.size()>0:
		distance_to_next_point = $".".position.distance_to(path[0])
		if distance_to_move >= distance_to_next_point:
			$".".position = path[0]
			path.remove(0)
		else:
			$".".position += $".".position.direction_to(path[0])*distance_to_move
		distance_to_move -= distance_to_next_point
