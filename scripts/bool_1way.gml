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
        var other_x = other_.x;
        var other_y = round(other_.y + (other_.sprite_height/2)-1);
        if other_x < oneway.x {
            return true;
        }
        if other_y > oneway.y + sprite_get_height(oneway.mask_index){
            return true;
        }
        with(oneway){
            if (place_meeting(self.x,self.y,other_)){
                return true;
            }
        }
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
