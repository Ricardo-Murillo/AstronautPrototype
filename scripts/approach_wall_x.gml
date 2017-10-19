///approach_wall_x(object,offsetx,offsety, distance, wall);
//for a given a object and distance, return distance it goes before hitting wall
//please make sure that object,offsetx,offsety are valid
var object = argument0;
var offsetx = argument1;
var offsety = argument2;
var distance = argument3;
var wall = argument4;
with object{
    var dx = offsetx + x;
    var dy = offsety + y;
    if (place_meeting(dx + distance, dy, wall)){
        var iter = 0;
        while(!place_meeting(dx+sign(distance),dy,wall)){
                iter += sign(distance);
                dx += sign(distance);
        }
        return iter;
    }else{
        return distance;
    }
}
