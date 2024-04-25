extends MeshInstance

onready var body_enemy = $"."

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	randomize()
	


func _on_Area_body_entered(body):
	if body.get_name() == "Player":
		var somecolorR = (randi()%200)/200.0
		var somecolorG = (randi()%200)/200.0
		var somecolorB = (randi()%200)/200.0
		var material = body_enemy.get_surface_material(0)
		material.albedo_color = Color(somecolorR, somecolorG, somecolorB)
		print(material.albedo_color)
		
		
