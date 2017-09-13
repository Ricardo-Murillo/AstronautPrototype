///friction_modifier_y(obj,force_x, force_y)
//fx_start = correction_x;
//fy_start = min(0, mass*grav/power(dt,2) + mass*correction_y/power(dt,2);
//fnetx_start =  fx_start  - sign(fx_start) * fric * fy_start;
//fnetx_total = min(0,abs(fnetx_start)) + min(0,abs(fnetx_last));
var obj = argument0;
//var force_x = min(0,argument2 + mass*grav);
var force_x = argument1;
var force_y = argument2;
var fric = 1.0;
if instance_exists(obj){
    with obj{
        var block = instance_place(x + force_x, y, collisionblock);
        if( block == noone){
            fric = 0.0;
        } else{
            //friction = get_friction(obj,block);
            fric = 1.0;
        }
    }
}
var force_net = force_y - sign(force_y) * fric * force_x;
return min(0,abs(force_net));
