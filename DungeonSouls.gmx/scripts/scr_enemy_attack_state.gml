///boss_attack_state
/*if (instance_exists(class_player)) {
   
   if (audio_is_playing(snd_sword)) {
      var dir = point_direction(x,y,class_player.x,class_player.y);
      motion_add(dir,3);
      audio_play_sound(snd_sword,1,false);
   }
} else {
  state = STATE_IDLE;
}

sprite_index = spr_knight_attack;
/*if (image_index > 0) {
   image_index = 0;
}*/
/*image_speed = .2;

/// Attack
if (image_index >= 5 && !attacked) {
    //audio_play_sound(snd_big_hit, 6, false);
    //audio_play_sound(snd_hit_two, 6, false);
    var damage = instance_create(x, y, obj_enemy_damage);
   
    damage.sprite_index = sprite_index;
    damage.creator = id;
    damage.damage = 2;
    damage.knockback = 8;
    damage.alarm[0] = room_speed*.4;
    attacked = true;
}

