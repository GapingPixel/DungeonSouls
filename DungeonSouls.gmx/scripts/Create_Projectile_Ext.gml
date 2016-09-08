///Create_Projectile_Ext(x,y,object,team,speed,crit_chance,base_damage,bonus_damage,magic_damage,bonus_magic,knockback,angle,base_accuracy,bonus_accuracy,trail_color,normal)
gml_pragma("forceinline");
xx              = argument0;
yy              = argument1;
object          = argument2;
tm              = argument3;
spd             = argument4;
crt_chance      = argument5;
base_damage     = argument6;
bonus_damage    = argument7;
magic_damage    = argument8;
bonus_magic     = argument9;
kback           = argument10;
ang             = argument11;
base_accuracy   = argument12;
bonus_accuracy  = argument13;
trail_col       = argument14;
normal          = argument15;
//SKULL
if tm == 1
{
    if ds_list_find_index(global.list,spr_Skull) != -1 and instance_exists(obj_Corpse)
    {
        base_damage += (10*0.01)*instance_number(obj_Corpse);
    }
}

obj = instance_create(xx,yy,object)
obj.normal = normal;
obj.team = tm;
obj.speed = spd;
if Test_Chance(crt_chance)
{
    obj.damage = Random(base_damage,(base_damage+bonus_damage))*2;
    obj.magic = Random(magic_damage,(magic_damage+bonus_magic))*2;
    if tm == 0 //CRITDAMAGE
    {
        if crit_dam > 0
        {
            obj.damage += (crit_dam*0.01)*obj.damage;
            obj.magic += (crit_dam*0.01)*obj.magic;            
        }
    }    
    obj.critical = true;
}else
{
    obj.damage = Random(base_damage,(base_damage+bonus_damage));
    obj.magic = Random(magic_damage,(magic_damage+bonus_magic));
    obj.critical = false;    
}

obj.knockback += kback;            
obj.direction = ang+choose(random(100-(base_accuracy+bonus_accuracy)),-random(100-(base_accuracy+bonus_accuracy)));
obj.image_angle = obj.direction;
obj.trail_col = trail_col;
obj.creator = id;
