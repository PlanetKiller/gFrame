
extends Node

#PlantKiller 1-13-2016 Aingel module
# tracking and movement module
# quick non-navi AI prototyping

# member variables here, example:
# var a=2
# var b="textvar"

func tracker(Source, Target, Dist, VecUp):
	Source.look_at(Target.get_translation(), VecUp)
	#Source.look_at_from_pos(Source.get_translation(), Target.get_translation(), VecUp)
	if(Source.get_translation().distance_to(Target.get_translation()) <= Dist):
		return true
	else:
		return false
	pass

func _ready():
	# Initialization here
	pass


