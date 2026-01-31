//In case we need to refine
cellWidth = 32;
cellHeight = 32;

// enums have global scope
enum guardStates { patrol, chase, swing};

state = guardStates.patrol;
 // Changed in creation code for instance

//Needed to orient object to path
xprevious = x;
yprevious = y;

//Determining detection paths
sight_range = 96;
swing_range = 48;

// Adding blank chase path
chase_path = path_add()
return_path = path_add()

// CREATION CODE DEFAULTS
acceptable_masks = ["demMask"]
patrol_path = demoPath;

//Creating mp_grid to create solids
global.grid = mp_grid_create(0, 0, room_width / cellWidth , room_height / cellHeight, cellWidth, cellHeight)
mp_grid_add_instances(global.grid, oWall, true); //Mark oWalls as solid

