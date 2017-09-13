///apply_friction_x(obj,force_x, force_y)
//fx_start = correction_x;
//fy_start = min(0, mass*grav/power(dt,2) + mass*correction_y/power(dt,2);
//fnetx_start =  fx_start  - sign(fx_start) * fric * fy_start;
//fnetx_total = min(0,abs(fnetx_start)) + min(0,abs(fnetx_last));
var obj = argument0;
var force_x = argument1;
var force_y = min(0,argument2 + mass*grav);
//friction = getfriction(obj,obj_getting_touched)
var fric = 1.0;
var force_netx = force_x - sign(force_x) * fric * force_y;
return min(0,abs(force_netx));
