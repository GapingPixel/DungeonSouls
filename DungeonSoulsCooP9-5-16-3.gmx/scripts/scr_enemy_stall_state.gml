///scr_enemy_idle_state
gml_pragma("forceinline");
anim = ANIM_IDLE;
if (alarm[1] <= 0) {
   state = STATE_IDLE;
}
   
