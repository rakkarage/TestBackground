extends Node2D

@onready var _sprite1 := $Sprite1
@onready var _sprite2 := $Sprite2

const _speed := 333
const _size := 1024
const _reset := -1024

func _process(delta) -> void:
	_sprite1.position.x += _speed * delta
	_sprite2.position.x += _speed * delta
	if _sprite1.position.x >= _size:
		var add = _sprite1.position.x - _size
		_sprite1.position.x = _reset + add
	if _sprite2.position.x >= _size:
		var add = _sprite2.position.x - _size
		_sprite2.position.x = _reset + add
