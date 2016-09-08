var CD = cooldown[char]- ((buff_cd[0]*0.01)*cooldown[char]);
//BRAIN
if ds_list_find_index(global.list,spr_Beating_Brain) != -1
{
    if hp <= hpmax[char]/2
    {
        if name[char] == "BARBARIAN" or name[char] == "VIKING"
        {   
            CD = (cooldown[char] - (((60+buff_cd[0])*0.01)*cooldown[char]));
        }
        else
        {   
            CD = cooldown[char] - (((40+buff_cd[0])*0.01)*cooldown[char]);
        }
    }
}

alarm[0] = max(CD,8);
