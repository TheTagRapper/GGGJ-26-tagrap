image_angle = cameraObj.image_angle;

if instance_exists(oPlayer)
{
	var player = instance_nearest(x, y, oPlayer)
	if place_meeting(x, y, player)
	{
		//SET ALARMS FOR OTHER CHARACTERS

		global.playerDetected = true;
		global.playerLastSeen = current_time
	} else if current_time - global.playerLastSeen > (global.alertTime) 
	{
		// RESET BACK TO NORMAL 
		global.playerDetected = false;
		image_index = 0;
	}
}

if (global.playerDetected)
{
			image_index = 1; //Debug line
} else image_index = 0;