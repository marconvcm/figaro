extends "res://Engine/Scripts/state.gd"

func enter(params = null):
   owner.get_node('Animation').play('prepare')

func _on_animation_finished(anim_name):
   emit_signal("finished", "attack")