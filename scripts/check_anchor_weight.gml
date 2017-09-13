///check_anchor_weight(obj_id,movement,axis)
//
var obj = argument0;
var correction = argument1;
var axis = argument2;

if instance_exists(obj){
    with obj{
        if axis == 'x'{
            if (place_meeting(x + correction, y, collisionblock)){
                var iter = 0;
                while(!place_meeting(x+sign(correction),y,collisionblock)){
                    iter += sign(correction);
                }
                return iter/correction ;
            }else{
                return 1.0;
            }
        } else if axis == 'y'{
            if (place_meeting(x, y + correction, collisionblock)){
                var iter = 0;
                while(!place_meeting(x,y+sign(correction),collisionblock)){
                    iter += sign(correction);
                }
                return iter/correction;
            }else{
                return 1.0;
            }
        }
    }
}
return 1.0;
