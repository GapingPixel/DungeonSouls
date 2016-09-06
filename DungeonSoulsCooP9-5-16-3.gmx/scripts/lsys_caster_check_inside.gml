// lsys_caster_check_inside(ID, light ID);
var i;
var a0 = argument0;
var a1 = argument1;
for (i = global._lsys_caster_points[a0]-1; i >=0; i--)
{
    if (global._lsys_caster_xpos[a0] + global._lsys_caster_point_x[a0, i] >= global._lsys_light_xpos[a1] - global._lsys_light_radius[a1]
    && global._lsys_caster_ypos[a0] + global._lsys_caster_point_y[a0, i] >= global._lsys_light_ypos[a1] - global._lsys_light_radius[a1]
    && global._lsys_caster_xpos[a0] + global._lsys_caster_point_x[a0, i] <= global._lsys_light_xpos[a1] + global._lsys_light_radius[a1]
    && global._lsys_caster_ypos[a0] + global._lsys_caster_point_y[a0, i] <= global._lsys_light_ypos[a1] + global._lsys_light_radius[a1])
        return 1;
}
return 0;
