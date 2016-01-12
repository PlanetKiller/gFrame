
extends KinematicBody

# member variables here, example:
# var a=2
# var b="textvar"
var gmove
var gitems
var JumpRay
var camera

func _fixed_process(delta):
	gmove.line_move_aug(self, "cont_up", Vector3(0,0,-1))
	gmove.line_move_aug(self, "cont_down", Vector3(0,0,1))
	gmove.line_move_aug(self, "cont_left", Vector3(-1,0,0))
	gmove.line_move_aug(self, "cont_right", Vector3(1,0,0))
	#move(Vector3(0,0,-5))
	gmove.jump_aug(JumpRay, self, 10, "cont_jump")
	gmove.fall(JumpRay, self, .008, 2.0)
	pass
	
func _input(event):
	gmove.mouse_rot(event, self, .05)
	gmove.cam_rot(event, camera, .01, 90)

func _ready():
	gmove = get_node("/root/gMove")
	gitems = get_node("/root/gItems")
	JumpRay = get_node("JumpRay")
	camera = get_node("Camera")
	#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	set_fixed_process(true)
	set_process_input(true)
	gitems.gen_inv(5)
	# Initialization here
	pass


