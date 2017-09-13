///friction_modifier_y(obj,force_x, force_y)
// returns force_y, subtracted by the ammount of friction the object would experience
// author: Ricardo Murillo

//fx_start = correction_x;
//fy_start = min(0, mass*grav/power(dt,2) + mass*correction_y/power(dt,2);
//fnetx_start =  fx_start  - sign(fx_start) * fric * fy_start;
//fnetx_total = min(0,abs(fnetx_start)) + min(0,abs(fnetx_last));
var obj = argument0;
//var force_x = min(0,argument2 + mass*grav);
var force_x = argument1;
var force_y = argument2;
var fric = 0.0;
if (force_x != 0){
    if instance_exists(obj){
        with obj{
            var block = instance_place(x + force_x, y, collisionblock);
            if( block == noone){
                fric = 0.0;
            } else{
                fric = get_friction(obj,block);
                //fric = 0.5;
            }
        }
    }
}
var force_net = force_y - sign(force_y) * fric * force_x;
if (force_y >= 0)
    return max(0,force_net);
else
    return min(0,force_net);
    
