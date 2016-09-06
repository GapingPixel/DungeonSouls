// lsys_caster_delete(ID);
gml_pragma("forceinline");
// Deactivates the caster to be overwritten by new caster
var i;
global._lsys_caster_deleted[argument0] = true;

//for (i = 0; i < global._lsys_lights; i += 1)
for (i = global._lsys_lights; i >= 0; i--)
{
    if (global._lsys_light_deleted[i])
        continue;
    if (lsys_caster_check_inside(argument0, i))
        global._lsys_light_changed[i] = true;
}
