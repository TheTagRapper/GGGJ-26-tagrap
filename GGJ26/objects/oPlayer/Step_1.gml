if place_meeting(x, y, oMask)
{
	var mask = instance_nearest(x, y ,oMask);
	masks[0] = mask.image_index;
	image_index = mask.image_index + 1;
	instance_destroy(mask);
}

ds_list_clear(instance_col_list);
instance_place_list(x, y, oFOVCamera, instance_col_list, false);
var list_size = ds_list_size(instance_col_list);
if ds_list_size(instance_col_list) > 1
{
	global.playerDetected = true;
	global.playerLastSeen = current_time;
	global.overlap_detected = true;
} else 
{
	global.overlap_detected = false;
}
