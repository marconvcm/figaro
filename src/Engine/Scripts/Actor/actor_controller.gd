extends Area2D

export var HP = 12

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
   damage_state.connect('on_damage_finish', self, "_on_damage_finish")

func _on_damage_finish(): 
   print("Marcos")
   if HP <= 0:
      queue_free()
   return

func _on_attack_finish(): return

func receive_attack(damage):
   print(damage)
   state_machine._change_state('damage')
   HP -= damage
   return
