extends "res://Engine/Scripts/Actor/actor_controller.gd"

func _on_attack_finish():
   emit_signal('attack_finished', 4)