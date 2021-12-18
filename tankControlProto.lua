angle=0
radius=25

ox=64
oy=64
x=64 y=64
speed=5

function _draw()
	cls(0)
	spr(1,x,y)
	pset(64,64,6)
	print(angle,0,0,6)
end

function _update()
	
	if(btn(1)) angle-=15
	if(btn(0)) angle+=15
	
	if(btn(2)) then
		x+=2*cos(angle/360)
		y+=2*sin(angle/360)
	end
	if(btn(3)) then
		x-=cos(angle/360)
		y-=sin(angle/360)
	end
		
	if(ox<=80) speed=-speed
	if(ox>=30) speed=-speed
	
	ox+=speed
end