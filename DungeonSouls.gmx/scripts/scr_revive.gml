with (obj_hero_corpse) {
     var current_player = obj_Hero;
     if ( instance_exists(current_player) ) {
        if (check_within_player_range(x,y,36,36)) {
           if ( collision_circle(x,y,8,current_player,false,true) > 0 ) {
              //draw_text(x,y,"Revive!!");
              var rev = instance_create(x,y,obj_Text);
              if (!instance_exists(rev)) {
                 rev.text = "Revive!!";
                 with rev {
                     if (check_within_player_range(x,y,48,48)) {
                        draw_set_font(text_font);
                        draw_set_alpha(text_alpha)
                        var my_canadian_text = ""//string_upper(other.canadian_text);
                        text = string_upper(text);
                        var ctext = string_copy(text+my_canadian_text,1,string_length(text+my_canadian_text));
                        draw_set_color(text_col)
                        draw_text_transformed(x-string_width(ctext)*0.5,y,string(text+my_canadian_text),scale,scale,0);
                     }
                }
              }
                
              if (current_player.cont_pick) {
                 time_to_revive -=1;
              } else {
              if (time_to_revive <room_speed*7)
                 time_to_revive +=0.5;
              } 
              if (time_to_revive <=0) {
                 alive = true
              }
              if ( alive = true )  { 
                 ///Steam Achievement
                 if ( global.steam_api ) {
                    if (!steam_get_achievement("I can see light Again!!")) then steam_set_achievement("I can see light Again!!");
                 }
                 with (instance_create(x,y,obj_Hero)) {
                      player = !obj_Hero.player;
                 }
                 Play_Sound_Normal(snd_change,1,0.5,0,5000,true,false);
                 alive = false;
                 instance_destroy();
              }
               
              draw_healthbar(x-14, y-sprite_get_height(sprite_index)/2-4, x+13, y-sprite_get_height(sprite_index)/2-1, (time_to_revive/room_speed*7)*100, make_color_rgb(31,29,31), DS_RED, DS_GREEN, 0, 0, 0)
            }
        }
    }
}
