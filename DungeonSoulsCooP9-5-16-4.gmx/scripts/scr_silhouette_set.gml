///scr_silhouette_set( y, colour )
/*with( obj_silhouette ) {
    
    var shader = shd_silhouette;
    var surface = sur_silhouette;
    
    shader_set( shader );
    texture_set_stage( shader_get_sampler_index( shader, "u_sSilhSurface" ), surface_get_texture( surface ) );
    shader_set_uniform_f( shader_get_uniform( shader, "u_vSilhView" ), view_xview[0], view_yview[0], view_wview[0], view_hview[0] );
    shader_set_uniform_f( shader_get_uniform( shader, "u_cSilhColour" ), colour_get_red( argument1 ) / 255, colour_get_green( argument1 ) / 255, colour_get_blue( argument1 ) / 255 );
    shader_set_uniform_f( shader_get_uniform( shader, "u_fSilhDepth" ), argument0 );

}
