//DESCRIPTION
gml_pragma("forceinline");
var maxprice = 15000
if global.passive[0] > PASSIVE_MAX global.passive[0] = PASSIVE_MAX;
if global.passive[1] > PASSIVE_MAX global.passive[1] = PASSIVE_MAX;
if global.passive[2] > PASSIVE_MAX global.passive[2] = PASSIVE_MAX;
if global.passive[3] > PASSIVE_MAX global.passive[3] = PASSIVE_MAX;
if global.passive[4] > PASSIVE_MAX global.passive[4] = PASSIVE_MAX;
if global.passive[5] > PASSIVE_MAX global.passive[5] = PASSIVE_MAX;
if global.passive[6] > PASSIVE_MAX global.passive[6] = PASSIVE_MAX;
if global.passive[7] > PASSIVE_MAX global.passive[7] = PASSIVE_MAX;
if global.passive[8] > PASSIVE_MAX global.passive[8] = PASSIVE_MAX;

var P_HEALTH    = 75//50; //% health increase
var P_DAMAGE    = 40//20; //% damage increase
var P_REGEN     = 3//2;  //% hp per second
var P_CRIT      = 25//20; //% crit chance
var P_DEFENSE   = 150//100; //% defense increase
var P_SPEED     = 15//10; //% movement speed
var P_MAGIC     = 30//20; //% magic damage
var P_RESIST    = 140//100; //% magic resist
var P_COIN      = 3//1; //coin per 30 sec

if (mouse_x > 136 and mouse_x < 136+14) and (mouse_y > 108 and mouse_y < 108+14) {
    draw_set_alpha(0.7);
    draw_set_color(c_black);
    if global.passive[0] != PASSIVE_MAX
        hptext = "Stamina#"+string((global.passive[0]/PASSIVE_MAX)*P_HEALTH)+"% health increase#Cost: $"+string(floor(((global.passive[0]+1)/(PASSIVE_MAX+1))*maxprice));
    else
        hptext = "Stamina#"+string((global.passive[0]/PASSIVE_MAX)*P_HEALTH)+"% health increase#Max";
    draw_rectangle(mouse_x+16-2,mouse_y-2,mouse_x+2+16+string_width(hptext),mouse_y+2+string_height(hptext),false)
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(mouse_x+16,mouse_y,string(hptext));
}
if (mouse_x > 136+(15+1) and mouse_x < 136+(15+1)+14) and (mouse_y > 108 and mouse_y < 108+14)
{
    draw_set_alpha(0.7);
    draw_set_color(c_black);
    if global.passive[1] != PASSIVE_MAX
        hptext = "Attack Damage#"+string((global.passive[1]/PASSIVE_MAX)*P_DAMAGE)+"% damage increase#Cost: $"+string(floor(((global.passive[1]+1)/(PASSIVE_MAX+1))*maxprice));
    else
        hptext = "Attack Damage#"+string((global.passive[1]/PASSIVE_MAX)*P_DAMAGE)+"% damage increase#Max";
    draw_rectangle(mouse_x+16-2,mouse_y-2,mouse_x+2+16+string_width(hptext),mouse_y+2+string_height(hptext),false)
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(mouse_x+16,mouse_y,string(hptext));
}
if (mouse_x > 136+(30+2) and mouse_x < 136+(30+2)+14) and (mouse_y > 108 and mouse_y < 108+14)
{
    draw_set_alpha(0.7);
    draw_set_color(c_black);
    if global.passive[2] != PASSIVE_MAX
        hptext = "Regeneration#"+string((global.passive[2]/PASSIVE_MAX)*P_REGEN)+"% hp per second#Cost: $"+string(floor(((global.passive[2]+1)/(PASSIVE_MAX+1))*maxprice));
    else
        hptext = "Regeneration#"+string((global.passive[2]/PASSIVE_MAX)*P_REGEN)+"% hp per second#Max";
    draw_rectangle(mouse_x+16-2,mouse_y-2,mouse_x+2+16+string_width(hptext),mouse_y+2+string_height(hptext),false)
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(mouse_x+16,mouse_y,string(hptext));
}
//////////////////////////////////////////////////////////
if (mouse_x > 136 and mouse_x < 136+14) and (mouse_y > 127 and mouse_y < 127+14)
{
    draw_set_alpha(0.7);
    draw_set_color(c_black);
    if global.passive[3] != PASSIVE_MAX
        hptext = "Focus#"+string((global.passive[3]/PASSIVE_MAX)*P_CRIT)+"% crit chance#Cost: $"+string(floor(((global.passive[3]+1)/(PASSIVE_MAX+1))*maxprice));
    else
        hptext = "Focus#"+string((global.passive[3]/PASSIVE_MAX)*P_CRIT)+"% crit chance#Max";
    draw_rectangle(mouse_x+16-2,mouse_y-2,mouse_x+2+16+string_width(hptext),mouse_y+2+string_height(hptext),false)
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(mouse_x+16,mouse_y,string(hptext));
}
if (mouse_x > 136+(15+1) and mouse_x < 136+(15+1)+14) and (mouse_y > 127 and mouse_y < 127+14)
{
    draw_set_alpha(0.7);
    draw_set_color(c_black);
    if global.passive[4] != PASSIVE_MAX
        hptext = "Armor#"+string((global.passive[4]/PASSIVE_MAX)*P_DEFENSE)+"% defense increase#Cost: $"+string(floor(((global.passive[4]+1)/(PASSIVE_MAX+1))*maxprice));
    else
        hptext = "Armor#"+string((global.passive[4]/PASSIVE_MAX)*P_DEFENSE)+"% defense increase#Max";
    draw_rectangle(mouse_x+16-2,mouse_y-2,mouse_x+2+16+string_width(hptext),mouse_y+2+string_height(hptext),false)
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(mouse_x+16,mouse_y,string(hptext));
}
if (mouse_x > 136+(30+2) and mouse_x < 136+(30+2)+14) and (mouse_y > 127 and mouse_y < 127+14)
{
    draw_set_alpha(0.7);
    draw_set_color(c_black);
    if global.passive[5] != PASSIVE_MAX
        hptext = "Agility#"+string((global.passive[5]/PASSIVE_MAX)*P_SPEED)+"% movement increase#Cost: $"+string(floor(((global.passive[5]+1)/(PASSIVE_MAX+1))*maxprice));
    else
        hptext = "Agility#"+string((global.passive[5]/PASSIVE_MAX)*P_SPEED)+"% movement increase#Max";
    draw_rectangle(mouse_x+16-2,mouse_y-2,mouse_x+2+16+string_width(hptext),mouse_y+2+string_height(hptext),false)
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(mouse_x+16,mouse_y,string(hptext));
}
//////////////////////////////////////////////////////////
if (mouse_x > 136 and mouse_x < 136+14) and (mouse_y > 146 and mouse_y < 146+14)
{
    draw_set_alpha(0.7);
    draw_set_color(c_black);
    if global.passive[6] != PASSIVE_MAX
        hptext = "Magic Damage#"+string((global.passive[6]/PASSIVE_MAX)*P_MAGIC)+"% magic damage#Cost: $"+string(floor(((global.passive[6]+1)/(PASSIVE_MAX+1))*maxprice));
    else
        hptext = "Magic Damage#"+string((global.passive[6]/PASSIVE_MAX)*P_MAGIC)+"% magic damage#Max";
    draw_rectangle(mouse_x+16-2,mouse_y-2,mouse_x+2+16+string_width(hptext),mouse_y+2+string_height(hptext),false)
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(mouse_x+16,mouse_y,string(hptext));
}
if (mouse_x > 136+(15+1) and mouse_x < 136+(15+1)+14) and (mouse_y > 146 and mouse_y < 146+14)
{
    draw_set_alpha(0.7);
    draw_set_color(c_black);
    if global.passive[7] != PASSIVE_MAX
        hptext = "Purity#"+string((global.passive[7]/PASSIVE_MAX)*P_RESIST)+"% magic resistance#Cost: $"+string(floor(((global.passive[7]+1)/(PASSIVE_MAX+1))*maxprice));
    else
        hptext = "Purity#"+string((global.passive[7]/PASSIVE_MAX)*P_RESIST)+"% magic resistance#Max";
    draw_rectangle(mouse_x+16-2,mouse_y-2,mouse_x+2+16+string_width(hptext),mouse_y+2+string_height(hptext),false)
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(mouse_x+16,mouse_y,string(hptext));
}
if (mouse_x > 136+(30+2) and mouse_x < 136+(30+2)+14) and (mouse_y > 146 and mouse_y < 146+14)
{
    draw_set_alpha(0.7);
    draw_set_color(c_black);
    if global.passive[8] != PASSIVE_MAX
        hptext = "Greed#"+string((global.passive[8]/PASSIVE_MAX)*P_COIN)+" coin every 30 seconds#Cost: $"+string(floor(((global.passive[8]+1)/(PASSIVE_MAX+1))*maxprice));
    else
        hptext = "Greed#"+string((global.passive[8]/PASSIVE_MAX)*P_COIN)+" coin every 30 seconds#Max";
    draw_rectangle(mouse_x+16-2,mouse_y-2,mouse_x+2+16+string_width(hptext),mouse_y+2+string_height(hptext),false)
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(mouse_x+16,mouse_y,string(hptext));
}
//ADD
var key_pick;
var pad;

pad = global.player[GAMEPAD_1];
key_pick = max(gamepad_button_check_pressed(pad,ds_map_find_value(global.ckeys,'pick')), mouse_check_button_pressed(mb_left)) ;

if ( key_pick ) {
    if (mouse_x > 136 and mouse_x < 136+14) and (mouse_y > 108 and mouse_y < 108+14) {
        if global.passive[0] < PASSIVE_MAX and global.total_coins >= floor(((global.passive[0]+1)/(PASSIVE_MAX+1))*maxprice) {
            global.total_coins -= floor(((global.passive[0]+1)/(PASSIVE_MAX+1))*maxprice)        
            global.passive[0] += 1
            if global.total_coins < 0 then global.total_coins = 0;
        }
    }
    if (mouse_x > 136+(15+1) and mouse_x < 136+(15+1)+14) and (mouse_y > 108 and mouse_y < 108+14)
    {
        if global.passive[1] < PASSIVE_MAX and global.total_coins >= floor(((global.passive[1]+1)/(PASSIVE_MAX+1))*maxprice)
        {
            global.total_coins -= floor(((global.passive[1]+1)/(PASSIVE_MAX+1))*maxprice)        
            global.passive[1] += 1
            if global.total_coins < 0 then global.total_coins = 0;            
        }
    }
    if (mouse_x > 136+(30+2) and mouse_x < 136+(30+2)+14) and (mouse_y > 108 and mouse_y < 108+14)
    {
        if global.passive[2] < PASSIVE_MAX and global.total_coins >= floor(((global.passive[2]+1)/(PASSIVE_MAX+1))*maxprice)
        {
            global.total_coins -= floor(((global.passive[2]+1)/(PASSIVE_MAX+1))*maxprice)        
            global.passive[2] += 1
            if global.total_coins < 0 then global.total_coins = 0;            
        }
    }
    //////////////////////////////////////////////////////////
    if (mouse_x > 136 and mouse_x < 136+14) and (mouse_y > 127 and mouse_y < 127+14)
    {
        if global.passive[3] < PASSIVE_MAX and global.total_coins >= floor(((global.passive[3]+1)/(PASSIVE_MAX+1))*maxprice)
        {
            global.total_coins -= floor(((global.passive[3]+1)/(PASSIVE_MAX+1))*maxprice)        
            global.passive[3] += 1
            if global.total_coins < 0 then global.total_coins = 0;            
        }
    }
    if (mouse_x > 136+(15+1) and mouse_x < 136+(15+1)+14) and (mouse_y > 127 and mouse_y < 127+14)
    {
        if global.passive[4] < PASSIVE_MAX and global.total_coins >= floor(((global.passive[4]+1)/(PASSIVE_MAX+1))*maxprice)
        { 
            global.total_coins -= floor(((global.passive[4]+1)/(PASSIVE_MAX+1))*maxprice)        
            global.passive[4] += 1
            if global.total_coins < 0 then global.total_coins = 0;            
        }
    }
    if (mouse_x > 136+(30+2) and mouse_x < 136+(30+2)+14) and (mouse_y > 127 and mouse_y < 127+14)
    {
        if global.passive[5] < PASSIVE_MAX and global.total_coins >= floor(((global.passive[5]+1)/(PASSIVE_MAX+1))*maxprice)
        {
            global.total_coins -= floor(((global.passive[5]+1)/(PASSIVE_MAX+1))*maxprice)
            global.passive[5] += 1            
            if global.total_coins < 0 then global.total_coins = 0;            
        }
    }
    //////////////////////////////////////////////////////////
    if (mouse_x > 136 and mouse_x < 136+14) and (mouse_y > 146 and mouse_y < 146+14)
    {
        if global.passive[6] < PASSIVE_MAX and global.total_coins >= floor(((global.passive[6]+1)/(PASSIVE_MAX+1))*maxprice)
        {
            global.total_coins -= floor(((global.passive[6]+1)/(PASSIVE_MAX+1))*maxprice)        
            global.passive[6] += 1
            if global.total_coins < 0 then global.total_coins = 0;            
        }
    }
    if (mouse_x > 136+(15+1) and mouse_x < 136+(15+1)+14) and (mouse_y > 146 and mouse_y < 146+14)
    {
        if global.passive[7] < PASSIVE_MAX and global.total_coins >= floor(((global.passive[7]+1)/(PASSIVE_MAX+1))*maxprice)
        { 
            global.total_coins -= floor(((global.passive[7]+1)/(PASSIVE_MAX+1))*maxprice)        
            global.passive[7] += 1
            if global.total_coins < 0 then global.total_coins = 0;            
        }
    }
    if (mouse_x > 136+(30+2) and mouse_x < 136+(30+2)+14) and (mouse_y > 146 and mouse_y < 146+14)
    {
        if global.passive[8] < PASSIVE_MAX and global.total_coins >= floor(((global.passive[8]+1)/(PASSIVE_MAX+1))*maxprice)
        {
            global.total_coins -= floor(((global.passive[8]+1)/(PASSIVE_MAX+1))*maxprice)
            global.passive[8] += 1            
            if global.total_coins < 0 then global.total_coins = 0;            
        }
    }    
}
