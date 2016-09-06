// lsys_light_add(x, y, radius, color);
// Defines a new point light and returns it's ID
var i;
var a0 = argument0;
var a1 = argument1; 
var a2 = argument2; 
var a3 = argument3;  
//for (i = 0; i < global._lsys_lights; i += 1)
for (i = global._lsys_lights-1; i >=0 ; i--)
{
    if (global._lsys_light_deleted[i])
    {
        global._lsys_light_xpos[i] = a0 * global._lsys_quality;
        global._lsys_light_ypos[i] = a1 * global._lsys_quality;
        global._lsys_light_radius[i] = a2 * global._lsys_quality;
        global._lsys_light_color[i] = a3;
        global._lsys_light_sprite[i] = -1;
        global._lsys_light_rot[i] = 0;
        global._lsys_light_surface[i] = surface_create(a2 * 2 * global._lsys_quality, a2 * 2 * global._lsys_quality);
        global._lsys_light_deleted[i] = false;
        global._lsys_light_changed[i] = true;
        return i;
    }
}
global._lsys_light_xpos[global._lsys_lights] = a0 * global._lsys_quality;
global._lsys_light_ypos[global._lsys_lights] = a1 * global._lsys_quality;
global._lsys_light_radius[global._lsys_lights] = a2 * global._lsys_quality;
global._lsys_light_color[global._lsys_lights] = a3;
global._lsys_light_sprite[global._lsys_lights] = -1;
global._lsys_light_rot[global._lsys_lights] = 0;
global._lsys_light_surface[global._lsys_lights] = surface_create(a2 * 2 * global._lsys_quality, a2 * 2 * global._lsys_quality);
global._lsys_light_deleted[global._lsys_lights] = false;
global._lsys_light_changed[global._lsys_lights] = true;
global._lsys_lights += 1;
return global._lsys_lights - 1;
