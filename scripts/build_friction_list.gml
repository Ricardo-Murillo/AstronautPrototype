///build_friction_list()
// builds an array filled with friction values for each object pair
// author: Ricardo Murillo

arr = array(
    array(player,obj_block,0.5),
    array(obj_weight,obj_block,0.5)
);
        
globalvar friction_list;
friction_list = arr;
