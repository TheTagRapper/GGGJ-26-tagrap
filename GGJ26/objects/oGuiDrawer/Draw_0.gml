cam_x = camera_get_view_x(view_camera[0])
cam_y = camera_get_view_y(view_camera[0])
cam_width = camera_get_view_width(view_camera[0]);

draw_text(cam_x, cam_y ,  "HP : " + string(player.pHealth) + "\nMask 1: " + string(player.selected_mask));

alert_string = "UNAWARE"
if !(global.playerDetected)	alert_string = "UNAWARE";
else alert_string = "AWARE"; 

draw_text((cam_width /2) + cam_x + 130, cam_y, alert_string);