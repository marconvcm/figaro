extends "res://Engine/Scripts/state.gd"

func enter(params = null):
   owner.get_node('Animation').play('idle')