///apply_approach_wall(object)
var object = argument0;
with object{
    //H collision
    var dx = approach_wall_x(self,0,0,vel_x*dt,collisionblock)   
    if abs(dx)< abs(vel_x*dt) vel_x = 0;
    x += dx;
    //V collision
    var dy = approach_wall_y(self,0,0,vel_y*dt,collisionblock)   
    if abs(dy)< abs(vel_y*dt) vel_y = 0;
    y += dy;
}
