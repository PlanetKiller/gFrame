
extends CanvasItem

# member variables here, example:
# var a=2
# var b="textvar"
var gItems
var Sprites

func set_buttons():
	var Item
	for i in get_children():
		if(i.is_in_group("Item")):
			Item = gItems.get_inv_item(i.get_name())
			if(Item!=null):
				gItems.set_button(Item[1], "", Sprites, Item[0], i)
			else:
				gItems.set_button("", "", Sprites, "Empty", i)
				

		

func _ready():
	gItems = get_node("/root/gItems")
	gItems.gen_inv(6)
	Sprites = get_node("Sprites")
	gItems.set_inv_item("Item0",["Blade",1])
	gItems.set_inv_item("Item1",["Bread",10])
	#set_text("100")
	set_buttons()
	# Initialization here
	pass









func _on_Item0_pressed():
	gItems.swap_inv("Item0")
	set_buttons()
	pass # replace with function body


func _on_Item1_pressed():
	gItems.swap_inv("Item1")
	set_buttons()
	pass # replace with function body


func _on_Item2_pressed():
	gItems.swap_inv("Item2")
	set_buttons()
	pass # replace with function body


func _on_Item3_pressed():
	gItems.swap_inv("Item3")
	set_buttons()
	pass # replace with function body


func _on_Item4_pressed():
	gItems.swap_inv("Item4")
	set_buttons()
	pass # replace with function body


func _on_Item5_pressed():
	gItems.swap_inv("Item5")
	gItems.add_stack("Bread", 10)
	
	set_buttons()
	
	pass # replace with function body
