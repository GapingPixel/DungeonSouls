// lsys_caster_add(x, y);
// Defines a new shadow caster and returns it's ID
var i;
//for (i = 0; i < global._lsys_casters; i += 1)
var a0 = argument0 * global._lsys_quality;
var a1 = argument1 * global._lsys_quality;
for (i = global._lsys_casters-1; i >=0 ; i--)
{
    if (global._lsys_caster_deleted[i])
    {
        global._lsys_caster_points[i] = 0;
        global._lsys_caster_xpos[i] = a0;
        global._lsys_caster_ypos[i] = a1;
        global._lsys_caster_cx[i] = 0;
        global._lsys_caster_cy[i] = 0;
        global._lsys_caster_deleted[i] = false;
        return i;
    }
}
global._lsys_caster_points[global._lsys_casters] = 0;
global._lsys_caster_xpos[global._lsys_casters] = a0;
global._lsys_caster_ypos[global._lsys_casters] = a1;
global._lsys_caster_cx[global._lsys_casters] = 0;
global._lsys_caster_cy[global._lsys_casters] = 0;
global._lsys_caster_deleted[global._lsys_casters] = false;
global._lsys_casters += 1;
return global._lsys_casters - 1;
