if place_meeting(x, y, oDemMask)
{
	masks[0] = "demMask";
	instance_destroy(instance_nearest(x,y,oDemMask));
}