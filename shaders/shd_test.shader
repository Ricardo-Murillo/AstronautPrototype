//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~

//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec2 coordinates;
    float pixelDistanceX;
    float pixelDistanceY;
    float offset;
    float dir;
    float angledeg;
    float angle;
    
    //vec2 coordinates = vec2(v_vTexcoord.x - 0.155, v_vTexcooord.y - 0.155) * vec2(1.5, 1.5)/distance(vec2(0.5,
    //coordinates = vec2(v_vTexcoord.x, v_vTexcoord.y)/distance(vec2(0.5, 0.5), vec2(v_vTexcoord.x, -0.5));    
    
    pixelDistanceX = distance(v_vTexcoord.x, 0.5);
    pixelDistanceY = distance(v_vTexcoord.y, 0.5);
    
    //angledeg = ;
    float origin;
    origin = 2.0 * v_vTexcoord.x - 1.0;
    //origin = 2.0 * v_vTexcoord.x + 1.0;
    //offset = pixelDistanceY * sqrt(1.0 - 4.0*pixelDistanceX * pixelDistanceX);
    offset = 0.25 * pixelDistanceY * sqrt(1.0 - origin * origin);
    //offset = pixelDistanceY*(v_vTexcoord.x * (1.0 - v_vTexcoord.x));
    //offset = 0.5 * pixelDistanceY * cos(radians(pixelDistanceX * 90.0));
    //offset = (pixelDistanceX * 0.2) * pixelDistanceY;
    //offset = pixelDistanceY * cos();
    if (v_vTexcoord.y <= 0.5)
        dir = 1.0;
    else
        dir = -1.0;
    coordinates = vec2(v_vTexcoord.x ,v_vTexcoord.y + (offset*dir));    
    //coordinates = vec2(v_vTexcoord.x, v_vTexcoord.y + pixelDistanceX*(offset*8.0*dir));
    //coordinates = vec2(v_vTexcoord.x + pixelDistanceY*(offset*8.0*dir), v_vTexcoord.y + pixelDistanceX*(offset*8.0*dir));
    //y + y*x^2
    //vec2 correction;
    //correction = v_vTexcoord;
    //correction = vec2(v_vTexcoord.x *1.054 ,v_vTexcoord.y*1.054);
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, correction );    
    gl_FragColor = v_vColour * texture2D(gm_BaseTexture, coordinates);
}
    

