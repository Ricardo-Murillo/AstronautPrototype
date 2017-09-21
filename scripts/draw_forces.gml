///draw_forces(object)
//velocity
var object = argument0;
draw_set_colour(c_blue);
//draw_line_width(x,y, x+vel_x/2, y+vel_y/2,mass/5);
draw_arrow(object.x,object.y, object.x+object.vel_x*5, object.y+object.vel_y*5,20);
draw_set_colour(c_red);
//draw_arrow(object.x,object.y, object.x+object.acc_x*2, object.y+object.acc_y*2,10);
var size = ds_map_size(object.forces);
var first = ds_map_find_first(object.forces);
for (var i = 0; i < size; i++;){
    var force = object.forces[? first];
    draw_arrow(object.x,object.y,object.x+force[0]*10,object.y+force[1]*10,10);
    first = ds_map_find_next(object.forces, first);
}
var net_acc =  mult_vector(calculate_forces(object),1/object.mass);
draw_set_colour(c_green);
draw_arrow(object.x,object.y,object.x+net_acc[0]*10,object.y+net_acc[1]*10,10);
draw_set_colour(c_yellow);
draw_arrow(object.x,object.y,object.x+30*cos(object.tension_angle),object.y+30*sin(object.tension_angle),10);
draw_line(object.x,object.y,object.x+30*cos(object.tension_angle+pi/2),object.y+30*sin(object.tension_angle+pi/2));
draw_line(object.x,object.y,object.x+30*cos(object.tension_angle-pi/2),object.y+30*sin(object.tension_angle-pi/2));
if(!(vel_x == 0 && vel_y == 0)){
    //draw_arrow(object.x,object.y,object.x+30*cos(object.tension_angle+pi/2),object.y+30*sin(object.tension_angle+pi/2),10);
    draw_set_colour(c_blue);
     var vel_angle = -point_direction(0,0,object.vel_x,object.vel_y)*pi/180;
     ang = object.tension_angle+pi/2 - vel_angle;
    //var ang = angle_difference(-object.tension_angle*180/pi,vel_angle);
     var vel_dist = point_distance(0,0,object.vel_x,object.vel_y);
     var vel_proj = vel_dist*cos(ang);
     var new_vel_x = cos(object.tension_angle+pi/2);
     var new_vel_y = sin(object.tension_angle+pi/2);
    //draw_arrow(object.x,object.y,object.x+vel_dist*abs(sin(object.tension_angle))*5,object.y+vel_dist*abs(cos(object.tension_angle))*5,10);
    draw_arrow(object.x,object.y,object.x+vel_proj*cos(object.tension_angle+pi/2)*5,object.y+vel_proj*sin(object.tension_angle+pi/2)*5,10);
    //draw_arrow(object.x,object.y,object.x+vel_dist*cos(vel_angle)*5,object.y+vel_dist*sin(vel_angle)*5,10);
    //var velocity = array(object.vel_x,object.vel_y);
    //var tension_perp = array(cos(object.tension_angle+pi/2),sin(object.tension_angle+pi/2));
    //var vel_proj = get_projected(velocity,tension_perp);
    //draw_arrow(object.x,object.y,object.x+100*vel_proj[0],object.y+100*vel_proj[1],10);
}

