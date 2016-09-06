gml_pragma("forceinline");
rectWhiteSurface = surface_create(2,2);
surface_set_target(rectWhiteSurface);
    draw_set_color(c_white);
    draw_rectangle(0,0,1,1,false);
surface_reset_target();
