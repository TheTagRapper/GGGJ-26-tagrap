curTime = current_time;
if (state == guardStates.patrol)
{
	//Setting Looping Path
	if (path_index != patrol_path)
	{
		path_start(patrol_path, 1.5, path_action_restart, false);
	}
	
	// State Transition
	if(instance_exists(oPlayer))
	{
		var player = instance_nearest(x, y, oPlayer);
		// Detects if player is close
		if (point_distance(x, y, player.x, player.y) < sight_range)
		{
			state = guardStates.chase;
			//Need to prematruely end path
			path_end();
		}
	}
	
} else if (state == guardStates.chase)
{
	var player = instance_nearest(x, y, oPlayer);
	// Moving towards player
	// Does using mp_grid path (better than linear)
	if mp_grid_path(global.grid, chase_path, x, y, player.x, player.y, false)
	{
		path_start(chase_path, 1.5, path_action_stop, false);
	}
	
	// Checks if its been too long since its seen the player
	if (point_distance(x, y, player.x, player.y) < sight_range)
	{
		last_time_sight = current_time;
		
	} else if last_time_sight - current_time == (no_sight_limit){
		
		state = guardStates.patrol;
	 
	} 
}
