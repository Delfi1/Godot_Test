extends Node


# Переменные:
var a = 2;
var b = "text";

# Константы:
const World = "World";
const Answer = 42;

# Набор именованных констант: 
enum {EASY, MEDIUM, HARD}

# Вектор в 2D:
var vec2 = Vector2(1, 2);
# Вектор в 3D:
var vec3 = Vector3(1, 2, 3);

# Функция, которая выполняется при запуске программы:
func _ready():
	pass;

# Функция
func _func(param1, param2):
	param1 = str(param1);
	param2 = str(param2);
	var param3 = param1 + ", " + param2;
	print(param3);

# Цикл while:
func _cycle():
	var param1 = 0
	while param1 != 10:
		param1 += 1;

# Цикл for:
func _cycle_for():
	for i in range(10):
		i += 1;

