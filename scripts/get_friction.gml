///get_friction(obj1,obj2)
// returns float, friction constant producted by obj1 and obj2 interacting
// author: Ricardo Murillo

var obj1 = argument0;
var obj2 = argument1;

if instance_exists(obj1) && instance_exists(obj2){
    var class1 = obj1.object_index;
    var class2 = obj2.object_index;
    //var frics = ;
    for (var i = 0; i < array_length_1d(global.friction_list);i++){
        var check = global.friction_list[i];
        var test1 = check[0];
        var test2 = check[1];
        if (class1 == test1 && class2 == test2)
        || (class1 == test2 && class2 == test1){
                return check[2];
        }
    }
    
    return 0.5;
    /*if class1 == obj_block && class2 == player || class2 == obj_block && class1 == player
        return 0.1;
    if class1 == obj_block && class2 == player
        return 0.1;
    else
        return 0.5;*/        

}else  
    return 0;

