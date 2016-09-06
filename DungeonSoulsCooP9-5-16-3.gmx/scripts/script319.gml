/*var player1 = instance_find(obj_Hero,0);
var player2 = instance_find(obj_Hero,1);

with obj_Item
{
    if instance_exists(player1)
    {
        if (check_within_player_range(x,y,48,48))
        {
            if collision_circle(x,y,8,player1,false,true) > 0
            {
                draw_set_halign(fa_middle);
                draw_set_alpha(0.9);
                draw_set_color(make_color_rgb(31,29,31));
                var _key;
                if (gamepad_detected || joystick_detected)
                {
                    _key=Return_ContKey(ds_map_find_value(global.ckeys,'pick'));
                }
                else
                {
                    _key=Return_Key(ds_map_find_value(global.keys,'pick'));
                }
                var name = item_name[item_num];
                var desc = item_desc[item_num]+"#["+_key+"]";
                if item_price > 0 
                {
                    var desc = item_desc[item_num]+"#["+_key+"]";
                    var price = "$"+string(floor(item_price));
                }else 
                {
                    var desc = item_desc[item_num];
                    var price = "";
                }
                if (item_num==102) //RECIPE_INDEX
                {
                    desc=recipe_description+"#["+_key+"]";
                    name = recipe_name;
                }
                var stack_info="";
                var count=0,max_count=1;
                if (item_stack[item_num]>0)
                {
                    count = Item_Value(sprite_index);
                    max_count=item_stack[item_num];
                    if (count==undefined)
                    {
                        count=0;
                    }
                    stack_info = "Stack: "+string(count)+"/"+string(max_count);
                }
                var final_text=name+"#"+desc;
                if (item_price>0)
                {
                    final_text+="#"+price;
                }
                var offset=0;
                var conversion_text="";
                if (stack_info!="")
                {
                    if (count!=max_count)
                    {
                        offset+=8;
                        final_text+="#"+stack_info;
                    }
                    else
                    {
                        offset+=16;
                        conversion_text="#Will convert into either#GOLD, EXP or MATERIALS";
                        final_text+="#"+stack_info+conversion_text;
                    }
                }
                var wbox = string_width(final_text)/2;
                draw_rectangle(x-wbox-4,y+16,x+wbox+4,y+16+string_height(final_text),0);
                draw_set_color(item_color[item_num]);
                draw_rectangle(x-wbox-4,y+16,x+wbox+4,y+16+string_height(final_text),1);
                draw_set_alpha(1);
                {
                    draw_text(x,y+16,name);
                    draw_set_color(c_white)
                    draw_set_alpha(0.5);
                    draw_text(x,y+24,desc);
                    if (stack_info!="")
                    {
                        draw_text(x,y+24+string_height(desc),stack_info);
                    }
                    if (conversion_text!="")
                    {
                        draw_text(x,y+24+string_height(desc),conversion_text);
                    }
                    if item_price > 0
                    {
                        if player1.coin >= item_price
                            draw_set_color(c_yellow);
                        else
                            draw_set_color(c_red);
                        draw_set_alpha(0.5)            
                        draw_text(x,y+24+string_height(desc)+offset,price);
                    }
                }
                draw_set_alpha(1);
                draw_set_halign(false);
            }
        }
    }    
}

///CHEST
with obj_Chest
{
    if instance_exists(player1)
    {
        if (check_within_player_range(x,y,48,48))
        {
            if collision_circle(x,y,16,player1,false,true) > 0
            {
                draw_set_halign(fa_middle);
                draw_set_alpha(0.8);
                draw_set_color(make_color_rgb(31,29,31));
                var _key;
                if (gamepad_detected || joystick_detected)
                {
                    _key=Return_ContKey(ds_map_find_value(global.ckeys,'pick'));
                }
                else
                {
                    _key=Return_Key(ds_map_find_value(global.keys,'pick'));
                }
                var name = chest_name+other.canadian_text;
                if chest_name == "SILVER CHEST"
                    if player1.silver_key > 0
                        var desc = chest_desc+"#["+_key+"]";
                    else
                        var desc = chest_desc;
                else if chest_name == "GOLDEN CHEST"
                    if player1.golden_key > 0
                        var desc = chest_desc+"#["+_key+"]";
                    else
                        var desc = chest_desc;
                else    
                    var desc = chest_desc+"#["+_key+"]";                    
                if chest_price > 0 var price = "$"+string(chest_price);else var price = "";
                
                draw_rectangle(x-(string_width(desc)/2)-4,y+16,x+(string_width(desc)/2)+4,y+16+string_height(name+"#"+desc+"#"+price),0);        
                draw_set_color(c_white);
                draw_rectangle(x-(string_width(desc)/2)-4,y+16,x+(string_width(desc)/2)+4,y+16+string_height(name+"#"+desc+"#"+price),1);        
                draw_set_alpha(1);               
                draw_text(x,y+16,name);
                draw_set_color(c_white)
                draw_set_alpha(0.5);
                draw_text(x,y+24,desc);
                if chest_price > 0
                {
                    if player1.coin >= chest_price
                        draw_set_color(c_yellow);
                    else
                        draw_set_color(c_red);
                    draw_set_alpha(0.5)            
                    draw_text(x,y+24+string_height(desc),price);            
                }
                draw_set_alpha(1);
                draw_set_halign(false);
            }
        }
    }    
}

with obj_Item
{
    if instance_exists(player2)
    {
        if (check_within_player_range(x,y,48,48))
        {
            if collision_circle(x,y,8,player2,false,true) > 0
            {
                draw_set_halign(fa_middle);
                draw_set_alpha(0.9);
                draw_set_color(make_color_rgb(31,29,31));
                var _key;
                if (gamepad_detected || joystick_detected)
                {
                    _key=Return_ContKey(ds_map_find_value(global.ckeys,'pick'));
                }
                else
                {
                    _key=Return_Key(ds_map_find_value(global.keys,'pick'));
                }
                var name = item_name[item_num];
                var desc = item_desc[item_num]+"#["+_key+"]";
                if item_price > 0 
                {
                    var desc = item_desc[item_num]+"#["+_key+"]";
                    var price = "$"+string(floor(item_price));
                }else 
                {
                    var desc = item_desc[item_num];
                    var price = "";
                }
                if (item_num==102) //RECIPE_INDEX
                {
                    desc=recipe_description+"#["+_key+"]";
                    name = recipe_name;
                }
                var stack_info="";
                var count=0,max_count=1;
                if (item_stack[item_num]>0)
                {
                    count = Item_Value(sprite_index);
                    max_count=item_stack[item_num];
                    if (count==undefined)
                    {
                        count=0;
                    }
                    stack_info = "Stack: "+string(count)+"/"+string(max_count);
                }
                var final_text=name+"#"+desc;
                if (item_price>0)
                {
                    final_text+="#"+price;
                }
                var offset=0;
                var conversion_text="";
                if (stack_info!="")
                {
                    if (count!=max_count)
                    {
                        offset+=8;
                        final_text+="#"+stack_info;
                    }
                    else
                    {
                        offset+=16;
                        conversion_text="#Will convert into either#GOLD, EXP or MATERIALS";
                        final_text+="#"+stack_info+conversion_text;
                    }
                }
                var wbox = string_width(final_text)/2;
                draw_rectangle(x-wbox-4,y+16,x+wbox+4,y+16+string_height(final_text),0);
                draw_set_color(item_color[item_num]);
                draw_rectangle(x-wbox-4,y+16,x+wbox+4,y+16+string_height(final_text),1);
                draw_set_alpha(1);
                {
                    draw_text(x,y+16,name);
                    draw_set_color(c_white)
                    draw_set_alpha(0.5);
                    draw_text(x,y+24,desc);
                    if (stack_info!="")
                    {
                        draw_text(x,y+24+string_height(desc),stack_info);
                    }
                    if (conversion_text!="")
                    {
                        draw_text(x,y+24+string_height(desc),conversion_text);
                    }
                    if item_price > 0
                    {
                        if player2.coin >= item_price
                            draw_set_color(c_yellow);
                        else
                            draw_set_color(c_red);
                        draw_set_alpha(0.5)            
                        draw_text(x,y+24+string_height(desc)+offset,price);
                    }
                }
                draw_set_alpha(1);
                draw_set_halign(false);
            }
        }
    }    
}

///CHEST
with obj_Chest
{
    if instance_exists(player2)
    {
        if (check_within_player_range(x,y,48,48))
        {
            if collision_circle(x,y,16,player2,false,true) > 0
            {
                draw_set_halign(fa_middle);
                draw_set_alpha(0.8);
                draw_set_color(make_color_rgb(31,29,31));
                var _key;
                if (gamepad_detected || joystick_detected)
                {
                    _key=Return_ContKey(ds_map_find_value(global.ckeys,'pick'));
                }
                else
                {
                    _key=Return_Key(ds_map_find_value(global.keys,'pick'));
                }
                var name = chest_name+other.canadian_text;
                if chest_name == "SILVER CHEST"
                    if player2.silver_key > 0
                        var desc = chest_desc+"#["+_key+"]";
                    else
                        var desc = chest_desc;
                else if chest_name == "GOLDEN CHEST"
                    if player2.golden_key > 0
                        var desc = chest_desc+"#["+_key+"]";
                    else
                        var desc = chest_desc;
                else    
                    var desc = chest_desc+"#["+_key+"]";                    
                if chest_price > 0 var price = "$"+string(chest_price);else var price = "";
                
                draw_rectangle(x-(string_width(desc)/2)-4,y+16,x+(string_width(desc)/2)+4,y+16+string_height(name+"#"+desc+"#"+price),0);        
                draw_set_color(c_white);
                draw_rectangle(x-(string_width(desc)/2)-4,y+16,x+(string_width(desc)/2)+4,y+16+string_height(name+"#"+desc+"#"+price),1);        
                draw_set_alpha(1);               
                draw_text(x,y+16,name);
                draw_set_color(c_white)
                draw_set_alpha(0.5);
                draw_text(x,y+24,desc);
                if chest_price > 0
                {
                    if player2.coin >= chest_price
                        draw_set_color(c_yellow);
                    else
                        draw_set_color(c_red);
                    draw_set_alpha(0.5)            
                    draw_text(x,y+24+string_height(desc),price);            
                }
                draw_set_alpha(1);
                draw_set_halign(false);
            }
        }
    }    
}
