
extends Node

#PlantKiller 1-13-2016 Events module
# handles text events, may be extended for other events

# member variables here, example:
# var a=2
# var b="textvar"

func rich_textbox(Text, Target, CloseButton):
	Target.clear()
	Target.add_text(Text)
	CloseButton.set_text("Done")
	if(CloseButton.is_pressed()):
		return true
	pass
	
func rich_yn_textbox(Text, Target, Ybutton, Nbutton, Ytext, Ntext):
	Target.clear()
	Ybutton.set_text(Ytext)
	Nbutton.set_text(Ntext)
	Target.add_text(Text)
	if(Ybutton.is_pressed()):
		return true
	elif(Nbutton.is_pressed()):
		return false
	pass
	
func rich_ynsm_textbox(Text, Target, Ybutton, Nbutton):
	Target.clear()
	Ybutton.set_text("Yes")
	Nbutton.set_text("No")
	Target.add_text(Text)
	if(Ybutton.is_pressed()):
		return true
	elif(Nbutton.is_pressed()):
		return false
	pass
	
func PK_rich_ynsm_textbox(Text, Target, Ybutton, Nbutton):
	Target.clear()
	Ybutton.set_text("Yes")
	Nbutton.set_text("No")
	Target.add_text(Text)
	if(Ybutton.is_pressed()):
		Target.get_parent().set_hidden(true)
		return true
	elif(Nbutton.is_pressed()):
		Target.get_parent().set_hidden(true)
		return false
	pass
	
func PK_rich_textbox(Text, Target, CloseButton):
	Target.clear()
	Target.add_text(Text)
	CloseButton.set_text("Done")
	if(CloseButton.is_pressed()):
		Target.get_parent().set_hidden(true)
		return true
	pass

func _ready():
	# Initialization here
	pass


