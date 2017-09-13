///get_bezier(p0,p1,p2,p3,t)
// returns a float based on point t [0.0-1.0] on a curve from p0 to p3
//      p1 and p2 influence the curve's direction
// author: Ricardo Murillo

var t = argument4;
/*if (argument_count == 3){
    return argument1 + t*(argument2 - argument1);
}else if (argument_count > 3){
    for(i = 1; i< argument_count-1; i++){
       var b[i-1] = get_bezier(argument0,argument
    }
}
{*/
var q0 = argument0 + t*(argument1 - argument0);
var q1 = argument1 + t*(argument2 - argument1);
var q2 = argument2 + t*(argument3 - argument2);
   
var r0 = q0 + t*(q1 - q0);
var r1 = q1 + t*(q2 - q1);
    
return r0 + t*(r1 - r0);

