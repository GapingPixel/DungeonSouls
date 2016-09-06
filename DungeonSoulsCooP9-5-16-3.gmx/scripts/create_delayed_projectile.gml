///create_delayed_projectile(x,y,owner_id,projectile_obj_ind,delay,proj_speed,proj_angle,indicator_sprite,max_image_index)
gml_pragma("forceinline");
var _o = instance_create(argument0,argument1,obj_delayed_projectile_emitter);
_o.owner=argument2;
_o.projectile=argument3;
_o.delay=argument4;
_o.spd=argument5;
_o.angle=argument6;
_o.indicator=argument7;
_o.max_img_ind=argument8;
