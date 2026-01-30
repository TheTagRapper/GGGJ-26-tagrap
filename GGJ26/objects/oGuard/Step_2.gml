
//This is meant to orient the guard towards the wall
if (x != xprevious || y != yprevious)
    image_angle = point_direction(xprevious,yprevious,x,y);
	
xprevious = x;
yprevious = y;