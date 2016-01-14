
extends RigidBody

# member variables here, example:
# var a=2
# var b="textvar"
var gAingel
var gMove
var Target

func setup():
	gAingel = get_node("/root/gAingel")
	gMove = get_node("/root/gMove")
	Target = get_node("/root/Spatial/Player")
	#print(Target)
	pass
	
func _fixed_process(delta):
	#print(gAingel.tracker(self, Target, 5, Vector3(0,0,0)))
	pass

func _ready():
	# Initialization here
	setup()
	set_fixed_process(true)
	pass


