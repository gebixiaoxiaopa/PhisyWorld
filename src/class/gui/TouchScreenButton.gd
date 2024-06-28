extends TouchScreenButton
var dr = 70


var fi =-1
var index:int =-1
var touch_pos:Vector2
var do:Vector2
var press:bool = false
@onready var rp = self.global_position
func _input(event):
	var st:=event as InputEventScreenTouch
	if st:
		if st.pressed and fi ==-1:
			var gp=st.position *get_canvas_transform()
			var lp =to_local(gp)
			var rect = Rect2(Vector2.ZERO,texture_normal.get_size())
			if rect.has_point(lp):
				fi = st.index
				do = gp - global_position
		elif  not st.pressed and st.index==fi:
			fi=-1
			global_position = rp	
	var sd:=event as InputEventScreenDrag
	if sd and sd.index == fi:
		var wp =sd.position*get_canvas_transform()-do
		var m = (wp - rp).limit_length(dr)
		global_position = rp + m
		m/=dr
		if m.x >0:
			Input.action_release("md")
			Input.action_release("mu")
			Input.action_release("ml")
			Input.action_press("mr",)
		elif m.x <0:
			Input.action_release("md")
			Input.action_release("mu")
			Input.action_release("mr")
			Input.action_press("ml")
		elif m.y >0:
			Input.action_release("ml")
			Input.action_release("mr")
			Input.action_release("mu")
			Input.action_press("md")
		elif m.y <0:
			Input.action_release("mr")
			Input.action_release("ml")
			Input.action_release("md")
			Input.action_press("mu")
		if m.y==0 and m.x==0:
			Input.action_release("mr")
			Input.action_release("ml")
			Input.action_release("md")
			Input.action_release("mu")
			
		
