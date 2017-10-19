///calculate_forces(object,exception)
var object = argument0;
var exception = "";
if argument_count>1 {
    exception = argument[1];
}
var forces = object.forces;
if (!ds_exists(forces,ds_type_map)) return array(0,0);
if (ds_map_empty(forces)) return array(0,0);
var size = ds_map_size(forces);
var first = ds_map_find_first(forces);
var sum_x = 0.0;
var sum_y = 0.0;
for (var i = 0; i < size; i++;){
    if(first != exception){
        var force = forces[? first];
        sum_x += force[0];
        sum_y += force[1];
    }
    first = ds_map_find_next(forces, first);
}
return array(sum_x,sum_y);
