///scr_check_line_of_sight(object)
gml_pragma("forceinline");

target = argument0;
var result = false;

if (instance_exists(target)) {
    if (collision_line(x,y,target.x,target.y,class_solid,true,false) == noone) {
        result = true;    
    }
}

return result;
