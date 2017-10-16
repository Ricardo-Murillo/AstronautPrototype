///bool_1way(oneway_object,x,y,input)
//returns false if 
//var object = argument0;
var oneway = argument0;
var other_x = argument1;
var other_y = argument2;
var input = argument3;
//var oneway_type = oneway.object_index;

switch (oneway.object_index){
    case obj_1way:
        return (other_y > oneway.y);
    case obj_ramp45:
        var width = sprite_get_width(oneway.sprite_index);
        var height = sprite_get_height(oneway.sprite_index);
        var m = height/width; //slope
        var c = oneway.y - m*oneway.x; // y = mx + c
        var w = m*other_x + c;
        return other_y > w;
        break;
}
return false;
