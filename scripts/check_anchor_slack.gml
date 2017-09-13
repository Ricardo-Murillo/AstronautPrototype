///check_anchor_weight(obj_id,offset_x,offset_y,movement,axis)
// returns float, the amount of movement obj_id can travel along the given axis before colliding
//      obj_id's position is offset by offset_x and offset_y
// author: Ricardo Murillo

var obj = argument0;
var offset_x = argument1;
var offset_y = argument2;
var correction = argument3;
var axis = argument4;

if instance_exists(obj){
    with obj{
        var dx = x+ offset_x;
        var dy = y+ offset_y;
        if axis == 'x'{
            if (place_meeting(dx + correction, dy, collisionblock)){
                var iter = 0;
                while(!place_meeting(dx+sign(correction),dy,collisionblock)){
                    iter += sign(correction);
                    dx += sign(correction);
                }
                return iter;
            }else{
                return correction;
            }
        } else if axis == 'y'{
            if (place_meeting(dx, dy + correction, collisionblock)){
                var iter = 0;
                while(!place_meeting(dx,dy+sign(correction),collisionblock)){
                    iter += sign(correction);
                    dy += sign(correction);
                }
                return iter;
            }else{
                return correction;
            }
        }
    }
}
return correction;
