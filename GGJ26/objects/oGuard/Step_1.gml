// Need to change so only in n rooms
if global.playerDetected == true and state == guardStates.patrol
{
	state = guardStates.chase;
}