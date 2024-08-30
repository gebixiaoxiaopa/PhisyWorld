extends CanvasModulate

var time:float = 0.0
@export var gradient : GradientTexture1D
const MIN_PER_DAY = 1140
const MIN_PER_HOUR = 60
const IN_GAME_TO_REAL_MIN_DUR = (2*PI) / MIN_PER_DAY
signal time_tick (day:int , hourt:int , min:int)
var past_min:float = -1.0
@export var INGAME_SPEED =100
@export var Init_hour = 6:
	set (h):
		Init_hour=h
		time =IN_GAME_TO_REAL_MIN_DUR * Init_hour * MIN_PER_HOUR
# Called when the node enters the scene tree for the first time.
func _ready():
	time = IN_GAME_TO_REAL_MIN_DUR * Init_hour * MIN_PER_HOUR


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	time+=_delta*IN_GAME_TO_REAL_MIN_DUR*INGAME_SPEED
	_reccalculate_time()
func  _reccalculate_time ():
	var total_time = int (time / IN_GAME_TO_REAL_MIN_DUR)
	var day:int = (total_time / MIN_PER_DAY)
	var current_day_min = total_time %MIN_PER_DAY
	var hour = int(current_day_min / MIN_PER_DAY)
	var min = (current_day_min % MIN_PER_HOUR)
	var value = (sin(time-PI/2.0)+1.0)/2.0
	self.color = gradient.gradient.sample(value)
	if past_min != min:
		past_min = min
		time_tick.emit(day,hour,min)
		
