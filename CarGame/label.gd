extends Label
@onready var label: Label = $"."

var distance_travelled : float = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	label.text = str(round(distance_travelled))
	distance_travelled+=delta
	print(distance_travelled)