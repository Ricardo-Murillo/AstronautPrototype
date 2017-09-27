///apply_approach_wall(object)
var object = argument0;
with(obj_1way) {
    if(round(object.y + (object.sprite_height/2)) > y)// or if down button?
    {
        //show_debug_message("hello: "+string(self.id));
        //sprite_index = spr_1way_temp;
        sprite_index = -1;
        mask_index = -1;
        
    }
}
with object{
    //H collision
    var dx = approach_wall_x(self,0,0,vel_x*dt,collisionblock)   
    if abs(dx)< abs(vel_x*dt) vel_x = 0;
    x += dx;
    //V collision
    var dy = approach_wall_y(self,0,0,vel_y*dt,collisionblock);   
    if abs(dy)< abs(vel_y*dt) vel_y = 0;
    y += dy;
}

with(obj_1way) {
    sprite_index = spr_1way;
    mask_index = spr_1way;
}
