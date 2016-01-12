
extends Node

# member variables here, example:
# var a=2
# var b="textvar"
var FallAcc = 0
var CamRot = 0


func line_move(Target, KeyString, Vec3):
	var ret = false
	#Target.move(Vec3)
	if(Input.is_action_pressed(KeyString)):
		Target.move(Vec3)
		ret = true
	return ret
	pass
	
func line_move_aug(Target, KeyString, Vec3):
	var ret = false
	if(Input.is_action_pressed(KeyString)):
		Target.set_transform(Target.get_transform().translated(Vec3))
		ret = true
	return ret
	pass
	

	
func fall(JumpRay, Target, FallSpeed, MaxSpeed):
	var CanJump = false
	JumpRay.add_exception(Target)
	if(!JumpRay.is_colliding()):
		CanJump = false
		if(FallAcc < MaxSpeed):
			FallAcc-=FallSpeed
	if(JumpRay.is_colliding()):
		FallAcc = 0
		#print(JumpRay.get_collider().get_name())
		CanJump = true
		FallSpeed = 0
	
	Target.move(Vector3(0, FallAcc, 0))
	return CanJump
	pass
	
func jump(JumpRay, Target, JumpBoost, KeyString):
	JumpRay.add_exception(Target)
	if(Input.is_action_pressed(KeyString)):
		if(JumpRay.is_colliding()):
			Target.move(Vector3(0, JumpBoost, 0))
			
	pass
	
func jump_aug(JumpRay, Target, JumpBoost, KeyString):
	JumpRay.add_exception(Target)
	if(Input.is_action_pressed(KeyString)):
		if(JumpRay.is_colliding()):
			Target.set_transform(Target.get_transform().translated(Vector3(0, JumpBoost, 0)))
			
	pass
	
func mouse_rot(e, Target, Sensitivity):
	var rot = Target.get_rotation()
	#yaw = fmod(yaw - event.relative_x * view_sensitivity, 360)
	var newrot = Vector3(0,1,0)
	var rez = OS.get_window_size()[0]/100
	var speed = (Input.get_mouse_speed()[0] * (Sensitivity/rez))/360
	#print(speed)
	if e.type == InputEvent.MOUSE_MOTION:
		Target.rotate_y(speed)
	pass
	
func cam_rot(e, Target, Sensitivity, RotRange):
	var rez = OS.get_window_size()[1]/100
	if e.type == InputEvent.MOUSE_MOTION:
		CamRot += (Input.get_mouse_speed()[1] * (Sensitivity/rez))/-10
		if (CamRot > RotRange):
			CamRot = RotRange
		elif(CamRot < -RotRange):
			CamRot = -RotRange
		Target.set_rotation(Vector3(deg2rad(CamRot),0,0))
	
	pass
	


func _ready():
	# Initialization here
	pass
	
	


