gml_pragma("forceinline");
if !instance_exists(target)
target = -1
if target = -1
{
    if instance_exists(obj_Hero) or instance_exists(obj_Enemy)
        if collision_line(x,y,obj_Hero.x,obj_Hero.y,obj_Wall,0,0) < 1
            target = instance_nearest(x,y,obj_Hero)
        else if collision_line(x,y,obj_Enemy.x,obj_Enemy.y,obj_Wall,0,0) < 1
            target = instance_nearest(x,y,obj_Enemy)        
}
