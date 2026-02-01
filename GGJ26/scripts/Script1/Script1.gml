function checkThroughMasks(player, acceptable_masks){
	
	disguised = false;
	if !(global.overlap_detected)
	{
		for (var i = 0; i < array_length(acceptable_masks); i++) {
			if acceptable_masks[i] == player.selected_mask 
			{
				disguised = true;
				break;
			}
			
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