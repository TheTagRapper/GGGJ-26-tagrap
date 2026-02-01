if place_meeting(x, y, oDemMask)
{
	masks[0] = "demMask";
	instance_destroy(instance_nearest(x,y,oDemMask));
}

ds_list_clear(instance_col_list);
instance_place_list(x, y, oFOVCamera, instance_col_list, false);
var list_size = ds_list_size(instance_col_list);
if ds_list_size(instance_col_list) > 1
{
	global.playerDetected = true;
	global.playerLastSeen = current_time;
	global.overlap_detected = true;
}
