extends "res://Engine/Scripts/state.gd"

signal on_damage_start()
signal on_damage_finish()

func enter(params = null):
   owner.get_node('Animation').play('damage')
   emit_signal('on_damage_start')

func _on_animation_finished(anim_name):
   emit_signal('finished', 'idle')
   emit_signal('on_damage_finish')