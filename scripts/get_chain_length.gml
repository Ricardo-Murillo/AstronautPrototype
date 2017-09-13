///get_chain_length(chain)
// returns float, distance from one end of chain to the other
// author: Ricardo Murillo

var chain = argument0;
if(instance_exists(chain)){
    if(chain.object_index == obj_chain){
        var start_x = chain.start_x;
        var start_y = chain.start_y;
        if (chain.start != noone){
            start_x = chain.start.x;
            start_y = chain.start.y;
        }
        var last_x = chain.last_x;
        var last_y = chain.last_y;
        if (chain.last != noone){
            last_x = chain.last.x;
            last_y = chain.last.y;
        }
        return point_distance(start_x,start_y,last_x,last_y);
    }
}
return -1;
