
extends Panel

# member variables here, example:
# var a=2
# var b="textvar"
var gEvent
var RichText
var Yes
var No

func setup():
	gEvent = get_node("/root/gEvent")
	RichText = get_node("Words")
	Yes = get_node("Yes")
	No = get_node("No")
	
	pass
	
func _fixed_process(delta):
	print(gEvent.PK_rich_ynsm_textbox("Words", RichText, Yes, No))
	#print(gEvent.PK_rich_textbox("Words", RichText, Yes))
	pass

func _ready():
	setup()
	#print(gEvent.PK_rich_ynsm_textbox("Words", RichText, Yes, No))
	#print(gEvent.PK_rich_textbox("Words", RichText, Yes))
	set_fixed_process(true)
	# Initialization here
	pass




func _on_Yes_pressed():
	#print(gEvent.PK_rich_textbox("Words", RichText, Yes))
	#print(gEvent.PK_rich_ynsm_textbox("Words", RichText, Yes, No))
	pass # replace with function body


func _on_No_pressed():
	#print(gEvent.PK_rich_ynsm_textbox("Words", RichText, Yes, No))
	pass # replace with function body
