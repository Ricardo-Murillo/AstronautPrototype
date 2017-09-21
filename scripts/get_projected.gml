///get_projected(vectorA, vectorB)
var vecA = argument0;
var vecB = argument1;
var dotAB = dot_product(vecA[0],vecA[1],vecB[0],vecB[1]);
var proj_m = dotAB/(power(vecA[0],2)+power(vecA[1],2));
return mult_vector(vecA,proj_m);
//return array(projA_x,projA_y);
