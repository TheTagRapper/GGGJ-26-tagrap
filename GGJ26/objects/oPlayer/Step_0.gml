xsp = 0;
ysp = 0;


/* Checking Movement
	ord converts string */
	
if keyboard_check(ord("W"))
{
	ysp -= y_speed;	
} else if keyboard_check(ord("S"))
{
	ysp += y_speed;
}

if keyboard_check(ord("A"))
{
	xsp -= x_speed;

} else if keyboard_check(ord("D"))
{
	xsp += x_speed;
}

//replace oWall with array when needed
move_and_collide(xsp, ysp, oWall);

// Changing masks
if keyboard_check(ord(1))
{
	selected_mask = masks[0]
} else if keyboard_check(ord(2))
{
	selected_mask = masks[1]
} else if keyboard_check(ord(3))
{
	selected_mask = masks[2]
}

if place_meeting(x,y, oBat) and current_time - last_hit_time >= 0.5 * power(10,3)
{
	pHealth -= 1;
	last_hit_time = current_time;
}

//DEBUG ONLY
if keyboard_check(ord("R"))
{
	room_restart()
}
