///create_shield_surface(diameter,color);
gml_pragma("forceinline");
var radius = argument0;
var halfRadius = radius/2;
shield_surface = surface_create(radius+8,radius+8);
surface_set_target(shield_surface);
    draw_set_color(argument1);
        draw_circle(halfRadius,halfRadius,halfRadius,false);
        draw_set_blend_mode(bm_subtract);
        draw_set_color(c_black);
        draw_set_alpha(0.1);
        for (i=0;i<halfRadius;i+=1)
        {
            draw_circle(halfRadius,halfRadius,1*i,false);
        }
        draw_set_alpha(1);
        draw_set_blend_mode(bm_normal);
surface_reset_target();
