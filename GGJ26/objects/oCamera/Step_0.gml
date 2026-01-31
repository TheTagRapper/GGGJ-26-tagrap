
if (image_angle >= startingAngle + 45 or image_angle <= startingAngle - 45)
{
	rotateSpeed *= -1;	
}

/*
if(instance_exists(obj_player) &&
   point_distance(x,y,obj_player.x,obj_player.y) < visionRange &&
   abs(angle_difference(image_angle, point_direction(x,y,obj_player.x,obj_player.y))) < visionWidth){
        ///The player is within my cone of vision!
} */

image_angle += rotateSpeed;