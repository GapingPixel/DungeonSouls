var i, u;
u = surface_get_width(global._lsys_surface) * surface_get_height(global._lsys_surface) * 4;
//for (i = 0; i < global._lsys_lights; i += 1)
for (i = global._lsys_lights-1; i >= 0; i--)
{
    if (!global._lsys_light_deleted[i])
        u += surface_get_width(global._lsys_light_surface[i]) * surface_get_height(global._lsys_light_surface[i]) * 4;
}
return u;
