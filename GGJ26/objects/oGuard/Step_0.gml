curTime = current_time;
if (state == guardStates.patrol)
{
	//Setting Looping Path
	if (path_index != patrol_path and path_index != return_path)
	{
		path_start(patrol_path, 1.5, path_action_restart, true);
	}
	
	// State Transition
	if(instance_exists(oPlayer))
	{
		var player = instance_nearest(x, y, oPlayer);
		// Detects if player is close
		if (point_distance(x, y, player.x, player.y) < sight_range) 
		{
			if checkThroughMasks(player, acceptable_masks){
				state = guardStates.chase;
				path_end();
			}
			//Need to prematruely end path

		}
	}
	
} else if (state == guardStates.chase)
{
	var player = instance_nearest(x, y, oPlayer);
	// Moving towards player
	// Does using mp_grid path (better than linear)
	if mp_grid_path(global.grid, chase_path, x, y, player.x, player.y, true)
	{
		path_start(chase_path, 1.5, path_action_stop, true);
	}
	
	// Checks if its been too long since its seen the player
	if (point_distance(x, y, player.x, player.y) < sight_range)
	{
		global.playerLastSeen = current_time;


	// State Transition to Patrol		
	} else if current_time - global.playerLastSeen >= global.alertTime or !(global.playerDetected){
		
		state = guardStates.patrol;
		path_end();
		
		if mp_grid_path(global.grid, return_path, x , y ,path_get_point_x(patrol_path, 0), path_get_point_y(patrol_path, 0), true)
		{
				path_start(return_path, 1.5, path_action_stop, true);
		}
	 
	} 
	
	// State Transition to swing
	if (point_distance(x, y, player.x, player.y) < swing_range)
	{
		state = guardStates.swing;
		//Need to prematruely end path
		guardBat = instance_create_layer(x, y, "Instances", oBat);
		
	}
} else if (state == guardStates.swing)
{
	var player = instance_nearest(x, y, oPlayer);
	// Moving towards player
	// Does using mp_grid path (better than linear)
	if mp_grid_path(global.grid, chase_path, x, y, player.x, player.y, true)
	{
		path_start(chase_path, 1.5, path_action_stop, false);
	}
	
	//State Transision to Chase
	if (point_distance(x, y, player.x, player.y) > swing_range)
	{
		instance_destroy(guardBat, true);
		state = guardStates.chase;
	}
	
}
