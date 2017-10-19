///bool_1way(oneway_object,other,input)
//returns false if it should be solid
//var object = argument0;
var oneway = argument0;
var other_ = argument1;
var input = argument2;
//var oneway_type = oneway.object_index;

switch (oneway.object_index){
    case obj_1way:
        var other_x = other.x;
        var other_y = round(other.y + (other.sprite_height/2)-1);
        return (other_y > oneway.y);
    case obj_ramp45:
        //oneway.y = m1*oneway.x + c1
        //other_.y = m2*other_.x + c2
        var m1 = sprite_get_height(oneway.mask_index)/sprite_get_width(oneway.mask_index);
        //if (oneway.sprite_width == 0) m1 = 0;
        var m2 = -sprite_get_width(oneway.mask_index)/sprite_get_height(oneway.mask_index);
        //show_debug_message(string(oneway.sprite_height)+ " / " + string(oneway.sprite_width) +" = " + string(m1));
        //show_debug_message(string(m2)+ " / " + string(m1) +" = " + string(m2));
        
        //if (oneway.sprite_height == 0) m2 = 0;
        var c1 = oneway.y - m1*oneway.x;
        var c2 = other_.y - m2*other_.x;
        var intersect_x = (c1 - c2)/(m2-m1)
        //show_debug_message(string(c1)+ " - " + string(c2) +" = " + string(c1 - c2));
        //show_debug_message(string(m2)+ " - " + string(m1) +" = " + string(m2 - m1));
        var intersect_y = m1*intersect_x + c1;
        var radius = round(other_.sprite_height/2) -1;
        
        //show_debug_message("other.y = "+string(other_.y) +", intersect.y = " + string(intersect_y));
        if (other_.y < intersect_y) && (point_distance(intersect_x, intersect_y, other_.x, other_.y)>radius){
        //if (other_.y < intersect_y){
            return false;    
        }else{
            return true;
        }
        
        //var other_x = other_.x;
        //var other_y = round(other_.y + (other_.sprite_height/2)-1);
        /*if other_x < oneway.x {
            return true;
        }
        if other_y > oneway.y + sprite_get_height(oneway.mask_index){
            return true;
        }*/
        /*with(other_){
            if (place_meeting(x,y,oneway)){
                return true;
            }
        }*/
        //return false;
        /*
        var width = sprite_get_width(oneway.sprite_index);
        var height = sprite_get_height(oneway.sprite_index);
        var m = height/width; //slope
        var c = oneway.y - m*oneway.x; // y = mx + c
        
        var angle = -point_direction(oneway.x, oneway.y, oneway.x+width, oneway.y+height)*pi/180;
        
        //var other_x = other_.x;
        //var other_y = round(other_.y + (other_.sprite_height/2)-1);
        var other_x = other_.x + (sprite_get_width(other_.sprite_index)/2) * cos(angle + pi/2);
        var other_y = other_.y + (sprite_get_height(other_.sprite_index)/2) * sin(angle + pi/2);
        var w = m*other_x + c;
        return other_y > w;
        */
        break;
}
return false;
