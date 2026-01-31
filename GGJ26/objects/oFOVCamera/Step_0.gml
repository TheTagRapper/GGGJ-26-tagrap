image_angle = cameraObj.image_angle;

if instance_exists(oPlayer)
{
	var player = instance_nearest(x, y, oPlayer)
	if place_meeting(x, y, player)
	{
		//SET ALARMS FOR OTHER CHARACTERS
		image_index = 1; //Debug line
		global.playerDetected = true;
		global.playerLastSeen = current_time
	} else if current_time - global.playerLastSeen > (3 * power(10,3)) 
	{
		// RESET BACK TO NORMAL 
		global.playerDetected = false;
		image_index = 0;
	}
}
