extends Area2D

onready var state_machine = $StateMachine 
onready var attack_state = $StateMachine/Attack
onready var damage_state = $StateMachine/Damage
onready var prepare_state = $StateMachine/Prepare
onready var item_state = $StateMachine/Item
onready var defense_state = $StateMachine/Damage
onready var idle_state = $StateMachine/Idle

signal attack_finished(damage)

func _ready():
   attack_state.connect('on_attack_finish', self, "_on_attack_finish")

func _on_damage_finish(): return

func _on_attack_finish(): return

func receive_attack(damage):
   state_machine._change_state('damage')
   return
