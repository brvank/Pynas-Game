extends Area2D
var speed = 5
# warning-ignore:unused_argument
func _process(delta):
	if $".".position.x <10 or $".".position.x >590 or $".".position.y <10 or $".".position.y >790:
		position_check()
	move()

func move():
	if Input.is_action_pressed("ui_down"):
		$".".position.y += speed
	if Input.is_action_pressed("ui_up"):
		$".".position.y -= speed
	if Input.is_action_pressed("ui_left"):
		$".".position.x -= speed
	if Input.is_action_pressed("ui_right"):
		$".".position.x += speed

func position_check():
	if $".".position.x<=10:
		$".".position.x=10
	if $".".position.x>=590:
		$".".position.x=590
	if $".".position.y<=10:
		$".".position.y=10
	if $".".position.y>=790:
		$".".position.y=790
