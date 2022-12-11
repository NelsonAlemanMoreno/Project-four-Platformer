extends Area2D

export var value = 5

func _ready():
	pass


func _on_Food_body_entered(body):
	if body.name == "Player":
		#Global.plus_scordde(value)
		visible = false
		$Munch.playing = true
		yield ($Munch, "finished")
		queue_free()
