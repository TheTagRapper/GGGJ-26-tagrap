//In case we need to refine
cellWidth = 32;
cellHeight = 32;

// enums have global scope
enum guardStates { patrol, chase, swing};

state = guardStates.patrol;
patrol_path = demoPath;
path_start(patrol_path, 1.5, path_action_restart, true);

//Needed to orient object to path
xprevious = x;
yprevious = y;

//Determining detection paths
last_time_sight = current_time;
sight_range = 64;
no_sight_limit = 3 * power(10, 3); //Remember time is in milliseconds 

// Adding blank chase path
chase_path = path_add()

//Creating mp_grid to create solids
global.grid = mp_grid_create(0, 0, room_width / cellWidth , room_height / cellHeight, cellWidth, cellHeight)
mp_grid_add_instances(global.grid, oWall, true); //Mark oWalls as solid