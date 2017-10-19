///calculate_velocity(object)
var object = argument0;
with object{
    vel_x = (x- old_x)/dt;
    vel_y = (y - old_y)/dt;

    //acc_x = (vel_x - old_vel_x)/dt;
    //acc_y = (vel_y - old_vel_y)/dt;
    
    old_x = x;
    old_y = y;
    //old_vel_x = vel_x;
    //old_vel_y = vel_y;
}
