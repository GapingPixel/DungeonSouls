///scr_get_input_player(player)
gml_pragma("forceinline");
device = global.pad[GAMEPAD_1];

//Player1
key[0,13]= (ord("M"));
key[0,12]= (ord("C"));
key[0,11]= (ord("F"));
key[0,10]= (ord("X"));
key[0,9] = vk_escape;
key[0,8] = (ord("Q"));
key[0,7] = vk_tab;
key[0,6] = (ord("E"));
key[0,5] = vk_space;
key[0,4] = (ord("S"));
key[0,3] = (ord("W"));
key[0,2] = (ord("A"));
key[0,1] = (ord("D"));

switch (global.coop) {

case false:
/*xaxis = gamepad_axis_value(device, gp_axislh) + (cont_rt - cont_lf);
yaxis = gamepad_axis_value(device, gp_axislv) + ( cont_dn - cont_up);*/
start = max(gamepad_button_check_pressed(device,gp_start),keyboard_check_pressed(vk_escape));

//cont_rt = max(gamepad_axis_value(device, gp_axislh) > 0, keyboard_check(key[0,1]));
cont_rt = max(gamepad_axis_value(device, gp_axislh) > 0, keyboard_check(ds_map_find_value(global.keys,'right'))); 
cont_lf = max(gamepad_axis_value(device, gp_axislh) < 0, keyboard_check(ds_map_find_value(global.keys,'left')));
cont_up = max(gamepad_axis_value(device, gp_axislv) < 0, keyboard_check(ds_map_find_value(global.keys,'up')));
cont_dn = max(gamepad_axis_value(device, gp_axislv) > 0, keyboard_check(ds_map_find_value(global.keys,'down')));

//cont_ml = max(gamepad_button_check(device, gp_shoulderrb), mouse_check_button(mb_left));
cont_ml = max(gamepad_button_check(device,ds_map_find_value(global.ckeys,"fskill")), mouse_check_button(mb_left));
//cont_mr = max(gamepad_button_check(device, gp_shoulderlb), mouse_check_button(mb_right));
cont_mr = max(gamepad_button_check(device,ds_map_find_value(global.ckeys,"askill")), mouse_check_button(mb_right));
//cont_mlp = max(gamepad_button_check_pressed(device, gp_shoulderrb), mouse_check_button_pressed(mb_left));
cont_mlp = max(gamepad_button_check_pressed(device, ds_map_find_value(global.ckeys,"fskill")), mouse_check_button_pressed(mb_left));
cont_mrp = max(gamepad_button_check_pressed(device, ds_map_find_value(global.ckeys,"askill")), mouse_check_button_pressed(mb_right));
cont_mlr = max(gamepad_button_check_released(device,ds_map_find_value(global.ckeys,"fskill")), mouse_check_button_released(mb_left));
cont_mrr = max(gamepad_button_check_released(device, ds_map_find_value(global.ckeys,"askill")), mouse_check_button_released(mb_right));

key_sskill = max(gamepad_button_check_pressed(device, ds_map_find_value(global.ckeys,"sskill")), keyboard_check_pressed(ds_map_find_value(global.keys,'sskill'))); 
key_tskill = max(gamepad_button_check_pressed(device, ds_map_find_value(global.ckeys,"tskill")), keyboard_check_pressed(ds_map_find_value(global.keys,'tskill')));


key_potion = max(gamepad_button_check(device, ds_map_find_value(global.ckeys,"potion")), keyboard_check(ds_map_find_value(global.keys,"potion")));
cont_pick = max(gamepad_button_check(device, ds_map_find_value(global.ckeys,"pick")), keyboard_check(ds_map_find_value(global.keys,"pick")));
attr_key = max(gamepad_button_check_pressed(device,ds_map_find_value(global.ckeys,"stat")),keyboard_check_pressed(ds_map_find_value(global.keys,"stat")));
map_key = max(gamepad_button_check_pressed(device,ds_map_find_value(global.ckeys,"map")), keyboard_check_pressed(ds_map_find_value(global.keys,"map")));
inv_key = max(gamepad_button_check_pressed(device,ds_map_find_value(global.ckeys,"inv")), keyboard_check_pressed(ds_map_find_value(global.keys,"inv")));
skillup = gamepad_button_check_pressed(device, ds_map_find_value(global.ckeys,"skillup"));

potion_key1= max (gamepad_button_check(device,gp_padl),keyboard_check_pressed(ord("1")));
potion_key2= max (gamepad_button_check(device,gp_padd),keyboard_check_pressed(ord("2")));
potion_key3= max (gamepad_button_check(device,gp_padr),keyboard_check_pressed(ord("3")));

var dir = point_direction(0, 0, gamepad_axis_value(device,gp_axisrh), gamepad_axis_value(device,gp_axisrv)) //in 3rd zero, should be joystick_data[0,6]
var hs = lengthdir_x(abs(gamepad_axis_value(device,gp_axisrh)),dir);
var vs = lengthdir_y(abs(gamepad_axis_value(device,gp_axisrv)), dir);
var extra_cursor_offset = 0;
var spd = 128+extra_cursor_offset;
//Cursor fix for both inputs
if ( hs != 0 || vs != 0) {
    window_mouse_set((window_get_width()*0.5) + hs*spd, (window_get_height()*0.5) + vs*spd);
}
break;

case true:
if ( argument0 == 0 ) {
///Player 1
var device = noone;

start = keyboard_check_pressed(vk_escape);

cont_rt = keyboard_check(ds_map_find_value(global.keys,'right'))
cont_lf = keyboard_check(ds_map_find_value(global.keys,'left'))
cont_up = keyboard_check(ds_map_find_value(global.keys,'up'))
cont_dn = keyboard_check(ds_map_find_value(global.keys,'down'))

cont_ml =  mouse_check_button(mb_left);
cont_mlr = mouse_check_button_released(mb_left);
cont_mlp = mouse_check_button_pressed(mb_left);

cont_mrp = mouse_check_button_pressed(mb_right);
cont_mr = mouse_check_button(mb_right);
cont_mrr = mouse_check_button_released(mb_right);

key_sskill = keyboard_check_pressed(ds_map_find_value(global.keys,'sskill'))
key_tskill = keyboard_check_pressed(ds_map_find_value(global.keys,'tskill'))

key_potion =  keyboard_check(ds_map_find_value(global.keys,"potion"));
cont_pick =  keyboard_check(ds_map_find_value(global.keys,"pick"));
attr_key = keyboard_check(ds_map_find_value(global.keys,"stat"));
map_key = keyboard_check(ds_map_find_value(global.keys,"map"));
inv_key = keyboard_check(ds_map_find_value(global.keys,"inv"));
//skillup = gamepad_button_check_pressed(device, gp_face3);

potion_key1= keyboard_check_pressed(ord("1"));
potion_key2= keyboard_check_pressed(ord("2"));
potion_key3= keyboard_check_pressed(ord("3"));

} else {
//Player 2
start = gamepad_button_check_pressed(device,gp_start);

cont_rt = gamepad_axis_value(device, gp_axislh) > 0;
cont_lf = gamepad_axis_value(device, gp_axislh) < 0;
cont_up = gamepad_axis_value(device, gp_axislv) < 0;
cont_dn = gamepad_axis_value(device, gp_axislv) > 0;


cont_ml = gamepad_button_check(device, gp_shoulderr);
cont_mlr = gamepad_button_check_released(device, gp_shoulderr);
cont_mlp = gamepad_button_check_pressed(device, gp_shoulderr);

cont_mr = gamepad_button_check(device, gp_shoulderl);
cont_mrp = gamepad_button_check_pressed(device, gp_shoulderl);
cont_mrr = gamepad_button_check_released(device, gp_shoulderl);

key_sskill = gamepad_button_check_pressed(device, gp_shoulderlb);
key_tskill = gamepad_button_check_pressed(device, gp_shoulderrb);

key_potion = gamepad_button_check(device, gp_padu);
cont_pick = gamepad_button_check(device, gp_face1);
attr_key = gamepad_button_check_pressed(device, gp_face4);
map_key = gamepad_button_check_pressed(device, gp_face1);
inv_key = gamepad_button_check_pressed(device, gp_select);
skillup = gamepad_button_check_pressed(device, gp_face3);

potion_key1= gamepad_button_check(device,gp_padl);
potion_key2= gamepad_button_check(device,gp_padd);
potion_key3= gamepad_button_check(device,gp_padr);
 
var dir = point_direction(0, 0, gamepad_axis_value(device,gp_axisrh), gamepad_axis_value(device,gp_axisrv)) //in 3rd zero, should be joystick_data[0,6]
var hs = lengthdir_x(abs(gamepad_axis_value(device,gp_axisrh)),dir);
var vs = lengthdir_y(abs(gamepad_axis_value(device,gp_axisrv)), dir);
var extra_cursor_offset = 0;
var spd = 128+extra_cursor_offset;
}
break;
}


