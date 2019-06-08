extends Node2D

onready var player = $Player
onready var enemy = $Enemy

func _on_player_attack_finished(damage):
   enemy.receive_attack(damage)
   pass