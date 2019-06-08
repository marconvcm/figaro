extends "res://Engine/Scripts/state_machine.gd"

func _ready():
	state_map = { 
		"idle": $Idle, "prepare": $Prepare, 
		"attack": $Attack, "item": $Item, 
		"damage": $Damage, "defense": $Defense }