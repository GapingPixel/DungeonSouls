///dark_merlin_lightning_pattern_a()
gml_pragma("forceinline");
/*
    Does a cross-like lightning pattern.
*/
var lim = max(room_w,room_h);
var delay=0.75*room_speed;
for (var i=0;i<lim/16;i++)
{
    create_delayed_projectile(16*i,16*i,id,obj_Lightning_Strike,delay,0,0,spr_Spark,4);
    create_delayed_projectile(lim-16*i,16*i,id,obj_Lightning_Strike,delay,0,0,spr_Spark,4);
}
