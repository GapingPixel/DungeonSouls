///scr_move_axis()
gml_pragma("forceinline");
anim = ANIM_MOVE;
var dir = point_direction(0, 0, xaxis, yaxis);
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);
/*switch (state) {

    case STATE_CHASE:
    var dir = point_direction(0, 0, player.x, player.y);
    mp_linear_step(player.x,player.y,spd,true);
    break;

    default:
    var dir = point_direction(0, 0, xaxis, yaxis);
    var hspd = lengthdir_x(spd, dir);
    var vspd = lengthdir_y(spd, dir);
    break;
}*/

if (hspd != 0) {
   image_xscale = sign(hspd);
}

//scr_get_face(dir);

/*x += hspd;
y += vspd;*/


