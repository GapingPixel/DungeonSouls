// lsys_caster_add_point(ID, x, y);
// Adds a vertex to the shadow caster relative to it's position
// Returns number of points
var i;
var par = argument0;
global._lsys_caster_point_x[par, global._lsys_caster_points[par]] = argument1 * global._lsys_quality;
global._lsys_caster_point_y[par, global._lsys_caster_points[par]] = argument2 * global._lsys_quality;
global._lsys_caster_points[par] += 1;
global._lsys_caster_cx[par] = 0;
global._lsys_caster_cy[par] = 0;

//for (i = 0; i < global._lsys_caster_points[par]; i += 1)
for (i = global._lsys_caster_points[par]-1; i >= 0; i--)
{
    global._lsys_caster_cx[par] += global._lsys_caster_point_x[par, i];
    global._lsys_caster_cy[par] += global._lsys_caster_point_y[par, i];
}
global._lsys_caster_cx[par] /= global._lsys_caster_points[par];
global._lsys_caster_cy[par] /= global._lsys_caster_points[par];

//for (i = 0; i < global._lsys_lights; i += 1)
for (i = global._lsys_lights-1; i >= 0; i--)
{
    if (global._lsys_light_deleted[i])
        continue;
    if (lsys_caster_check_inside(par, i))
        global._lsys_light_changed[i] = true;
}
return global._lsys_caster_points[par];
