function checkThroughMasks(player, image_index){
	
	disguised = false;
	if !(global.overlap_detected)
	{
		var iIndex = player.image_index;
		if (image_index + 1 == iIndex) 
		{
			disguised = true;
		}
	}		
	//SET ALARMS FOR OTHER CHARACTERS
	if !(disguised){
		global.playerDetected = true;
		global.playerLastSeen = current_time;
		return true;
	}

	return false;	
}