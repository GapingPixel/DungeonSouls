//EFFECTS
if ds_list_find_index(global.list,spr_Laser_Staff) != -1
{
    if(Test_Chance(laser_chance))
    {
        Create_Projectile(x,y,obj_Laser_Beam,team,0,crit_chance,atk_dam[char],dam_bon[char],mag_dam[char],mag_bon[char],knockback,angle,accuracy[char],acc_bon[char],false)
    }
}
if (Item_In_List(spr_Dragon_Tail))
{
    var chance = 0.15*Item_Value(spr_Dragon_Tail);
    if (random(1)<chance)
    {
        global.shake += 2;
        Create_Projectile(x,y,obj_Fireball,team,2,crit_chance,0,0,(1+0.5*Item_Value(spr_Dragon_Tail))*mag_dam[char],(1+0.5*Item_Value(spr_Dragon_Tail))*mag_bon[char],knockback,angle,accuracy[char],acc_bon[char],true)
    }
}

