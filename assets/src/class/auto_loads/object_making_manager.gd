extends Node
var times = 1
var rareties = ["Diamond","Dirt","Silver","gold","coper"]
var rarety_percents=[1,1,1,1,1,2,3,3,3,3,4,4,4,5,5]
func choose_random_rarety():
	var rarety_index = randi_range(0,rarety_percents.size())
	if rarety_index==1:
		print(rareties[1])
	elif rarety_index==4:
		print(rareties[2])
	elif rarety_index==5:
		print(rareties[3])	
	elif rarety_index==3:
		print(rareties[4])	
	elif rarety_index==2:
		print(rareties[0])
func _ready():
	if times==1:
		choose_random_rarety()
	if times==2:
		for i in range(1,10):
			choose_random_rarety()
