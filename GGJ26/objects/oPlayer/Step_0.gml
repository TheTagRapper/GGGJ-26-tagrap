xsp = 0;
ysp = 0;


/* Checking Movement
	ord converts string */
	
if keyboard_check(ord("W"))
{
	ysp -= y_speed;	
} else if keyboard_check(ord("A"))
{
	xsp -= x_speed;
} else if keyboard_check(ord("S"))
{
	ysp += y_speed;
} else if keyboard_check(ord("D"))
{
	xsp += x_speed;
}

move_and_collide(xsp, ysp, oWall);