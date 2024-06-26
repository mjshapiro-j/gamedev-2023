extends Node2D

@onready var animation = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	animation.play("cutscene")
	MusicManager.playCutscene2()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func finished():
	Fade.crossfade_prepare(1, "Diamond", false, false)
	get_tree().change_scene_to_file("res://Scenes/Levels/Level3_mountain_cave.tscn")
	Fade.crossfade_execute()
