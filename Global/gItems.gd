
extends Node

#PlantKiller 1-12-2016 Items module
# handles inventory creation and item adding
# please use name/amount pairs

# member variables here, example:
# var a=2
# var b="textvar"
var Inventory = {}
var ItemDict = {}
var iString = "Item"
var Held = null
var MaxStack = 99

func gen_inv(Num):
	var MiniInv = {}
	var MiniStr
	for i in range(Num):
		MiniStr = iString+str(i)
		MiniInv[MiniStr] = null
	
	#print(MiniInv)
	Inventory = MiniInv
	pass
	
func gen_ex_inv(Num):
	var MiniInv = {}
	var MiniStr
	for i in range(Num):
		MiniStr = iString+str(i)
		MiniInv[MiniStr] = null
	
	return MiniInv
	pass
	
func get_inv_item(InvDex):
	return Inventory[InvDex]
	pass
	
func set_inv_item(InvDex,Data):
	Inventory[InvDex] = Data
	pass
	
func empty_inv():
	for i in Inventory:
		Inventory[i] = null
	pass
	
	
func set_button(Text, ToolTip, Loader, ResName, Target):
	Target.set_text(str(Text))
	Target.set_tooltip(ToolTip)
	Target.set_button_icon(Loader.get_resource(ResName))
	pass
	
	
func get_held():
	return Held
	pass
	
	
func swap_inv(InvDex):
	var ExItem
	if(Held != null):
		if(Inventory[InvDex] != null):
			ExItem = Inventory[InvDex]
			Inventory[InvDex] = Held
			Held = ExItem
		else:
			Inventory[InvDex] = Held
			Held = null
	else:
		Held = Inventory[InvDex]
		Inventory[InvDex] = null
	pass
	
	
func add_stack(Name, Amount):
	var Keys = Inventory.keys()
	Keys.sort()
	var isMT = false
	var Excess = 0
	for i in Keys:
		if(Inventory[i] != null):
			if(Inventory[i][0] == Name and !isMT):
				if(Inventory[i][1]+Amount <= MaxStack):
					Inventory[i][1]+=Amount
					isMT = true
					break
				else:
					Excess = Amount - (MaxStack-Inventory[i][1])
					Inventory[i][1] = MaxStack
					Amount = Excess
	
	if(!isMT):
		for i in Keys:
			if(Inventory[i] == null and !isMT):
				Inventory[i] = [Name, Amount]
				isMT = true
				break
	return isMT
	pass
	
	
func add_nostack(Name, Amount):
	var Keys = Inventory.keys()
	Keys.sort()
	var isMT = false
	#print(Keys)
	for i in Keys:
		#print(i)
		
		if(Inventory[i] == null and !isMT):
			Inventory[i] = [Name, Amount]
			isMT = true
			break
	return isMT
	pass



func _ready():
	# Initialization here
	pass


