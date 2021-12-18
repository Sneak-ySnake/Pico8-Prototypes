angle=0
radius=50

ox=64
oy=64

function _draw()
	cls(0)
	spr(1,x,y)
	pset(64,64,6)
end

function _update()
	angle+=5
	x=ox+radius*cos(angle/360)
	y=oy+radius*sin(angle/360)
end