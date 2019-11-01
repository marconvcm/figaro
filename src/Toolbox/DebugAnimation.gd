extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var animation_name: String = "Setup"

# Called when the node enters the scene tree for the first time.
func _ready():
  $Animation.connect("animation_finished", self, "_on_attack_end")
  pass # Replace with function body.

func _on_attack_end(anim_name: String):
  print(anim_name)
  $Animation.stop(true)
  pass

func _process(delta):
  if Input.is_action_just_pressed("ui_accept"):
    $Animation.play(animation_name)