extends Node2D

var row = 10
var col = 10
var blackHoles = 10

var tile = preload("res://scenes/Tile.tscn")
var tiles

func _ready():
	for r in row:
		for c in col:
			var t = tile.instance()
			t.position = Vector2(r, c) * 40
			t.move_local_x(120)
			t.move_local_y(100)
			add_child(t)
	tiles = get_children()
	setObstacles()

func setObstacles():
	var n = 0
	while n < blackHoles:
		var tile = tiles[randi() % len(tiles)]
		if tile.isBlackHole == false:
			tile.setObstacle()
			n += 1
