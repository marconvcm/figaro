extends Node

signal state_changed(current_state)

export(NodePath) var START_STATE

var state_map = { }
var state_stack = []
var current_state = null

func _ready():
   for child in get_children():
      child.connect("finished", self, "_change_state")
   initialize(START_STATE)

func initialize(start_state):
   current_state = get_node(start_state)
   current_state.enter()

func _input(event): 
   current_state.handle_input(event)

func _process(delta): 
   current_state.update(delta)

func _on_animation_finished(anim_name): 
   current_state._on_animation_finished(anim_name)

func _change_state(next_state_name, params = null):
   current_state.exit()
   print(next_state_name)
   current_state = state_map[next_state_name]
   current_state.enter(params)