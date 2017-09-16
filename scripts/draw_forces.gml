///draw_forces(object)
//velocity
var object = argument0;
draw_set_colour(c_blue);
//draw_line_width(x,y, x+vel_x/2, y+vel_y/2,mass/5);
draw_arrow(object.x,object.y, object.x+object.vel_x*object.mass, object.y+object.vel_y*object.mass,20);
//draw_set_colour(c_red);
//draw_arrow(object.x,object.y, object.x+object.acc_x*2, object.y+object.acc_y*2,10);
