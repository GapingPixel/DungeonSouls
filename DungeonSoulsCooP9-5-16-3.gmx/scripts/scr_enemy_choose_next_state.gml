///scr_enemy_choose_next_state
gml_pragma("forceinline");
if (alarm[0] <= 0) {
    state = choose(STATE_WANDER, STATE_IDLE);
    alarm[0] = room_speed*irandom_range(2, 3);
    /*targetx = random(room_width);
    targety = random(room_height);*/
    if (state == STATE_WANDER) {
       xaxis = random_range(-1,1);
       yaxis = random_range(-1,1);
    }
}
