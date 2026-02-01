// change in x,y values
xsp = 0;
ysp = 0;

// Not actual speed
// Just how much change in each dir per step
x_speed = 3;
y_speed = 3;

masks = ["", "" ,""];
selected_mask = masks[0]

pHealth = 3;

global.playerDetected = false;
global.playerLastSeen = 7 * power(10,6);
global.alertTime = 5 * power(10,3);

last_hit_time = 0;

instance_col_list = ds_list_create();
global.overlap_detected = false;
