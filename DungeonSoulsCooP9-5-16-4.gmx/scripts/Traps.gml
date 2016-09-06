///TRAPS
gml_pragma("forceinline");
randomize();
if distance_to_object(obj_Trap) > 16 and !instance_place(x,y,obj_Door) and !instance_place(x,y,obj_Mark)
{
    if global.dungeon_name == ENVIRO1
    {
        if instance_place(x-16,y,obj_Wall) or instance_place(x+48,y,obj_Wall) or instance_place(x,y-16,obj_Wall) or instance_place(x,y+48,obj_Wall)
            if random(5) < 1 and place_free(x,y)
                instance_create(x+8+choose(random(4),-random(4)),y+8+choose(random(4),-random(4)),choose(obj_Floor_Arrow_Trap,obj_Flame_Trap,obj_Arrow_Trap));
    }else
    if global.dungeon_name == ENVIRO2
    {
        if (floor(random(10))<1) and place_free(x,y) instance_create(x+8+choose(random(4),-random(4)),y+8+choose(random(4),-random(4)),choose(obj_Arrow_Trap,obj_Floor_Arrow_Trap,obj_Poison_Tower));    
    }else
    if global.dungeon_name == ENVIRO3
    {
        if instance_place(x-16,y,obj_Wall) or instance_place(x+48,y,obj_Wall) or instance_place(x,y-16,obj_Wall) or instance_place(x,y+48,obj_Wall)
            if random(8) < 1 and place_free(x,y)
                instance_create(x+8+choose(random(4),-random(4)),y+8+choose(random(4),-random(4)),choose(obj_Floor_Arrow_Trap));            
    }else
    if global.dungeon_name == ENVIRO4
    {
        if instance_place(x-16,y,obj_Wall) or instance_place(x+48,y,obj_Wall) or instance_place(x,y-16,obj_Wall) or instance_place(x,y+48,obj_Wall)
            if random(5) < 1 and place_free(x,y)
                instance_create(x+8+choose(random(4),-random(4)),y+8+choose(random(4),-random(4)),choose(obj_Floor_Arrow_Trap));
    }else
    if global.dungeon_name == SECRET1
    {
        if instance_place(x-16,y,obj_Wall) or instance_place(x+48,y,obj_Wall) or instance_place(x,y-16,obj_Wall) or instance_place(x,y+48,obj_Wall)
            if random(3) < 1 and place_free(x,y)
                instance_create(x+8+choose(random(4),-random(4)),y+8+choose(random(4),-random(4)),choose(obj_Floor_Arrow_Trap));
    }else
    if global.dungeon_name == SECRET2
    {
        if instance_place(x-16,y,obj_Wall) or instance_place(x+48,y,obj_Wall) or instance_place(x,y-16,obj_Wall) or instance_place(x,y+48,obj_Wall)
            if random(1) < 1 and tile_layer_find(100,x,y)
                repeat(random(3))
                    instance_create(x+8+choose(random(8),-random(8)),y+8+choose(random(8),-random(8)),obj_Floor_Arrow_Trap);
    }
}
