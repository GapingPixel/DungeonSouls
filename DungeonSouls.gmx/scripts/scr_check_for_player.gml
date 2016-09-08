///scr_check_for_player
gml_pragma("forceinline");
/*
if (scr_check_line_of_sight(class_player)) {
    var dis = point_distance(x, y, class_player.x, class_player.y);
if (dis < sight) {
    state = STATE_CHASE;
    //player = instance_nearest(x,y,class_player);
    //player = class_player;
    var dir = point_direction(x,y,class_player.x,class_player.y);
    xaxis = lengthdir_x(1, dir);
    yaxis = lengthdir_y(1, dir);
    } else {
        scr_enemy_choose_next_state();
    }
} else {
    scr_enemy_choose_next_state();
}
