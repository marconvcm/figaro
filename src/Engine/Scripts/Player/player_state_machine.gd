extends "res://Engine/Scripts/Actor/actor_state_machine.gd"

func _input(event):
   if event.is_action_pressed("ui_accept") && current_state == state_map['idle']:
      ._change_state("prepare", { "type": "attack" })