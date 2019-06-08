extends "res://Engine/Scripts/state.gd"

signal on_attack_start()
signal on_attack_finish()

func enter(params = null):
   owner.get_node('Animation').play('attack')
   emit_signal('on_attack_start')

func _on_animation_finished(anim_name):
   emit_signal('finished', 'idle')
   emit_signal('on_attack_finish')