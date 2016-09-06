///PROP
gml_pragma("forceinline");
randomize();
if global.dungeon_name == ENVIRO1
{
    if instance_place(x-16,y,obj_Wall) or instance_place(x+48,y,obj_Wall) or instance_place(x,y-16,obj_Wall) or instance_place(x,y+48,obj_Wall)
        if random(5) < 1 and place_free(x,y)
            instance_create(x+8+choose(random(4),-random(4)),y+8+choose(random(4),-random(4)),choose(obj_Candle_Stand,obj_Crate,obj_Barrel,obj_Table,obj_Shelf));
        else
        {
            if global.boss_rm+1 == 2 and !instance_exists(obj_Golden_Shelf) and distance_to_object(obj_Hero) > 64
                instance_create(x+8+choose(random(4),-random(4)),y+8+choose(random(4),-random(4)),obj_Golden_Shelf);   
        }
}else
if global.dungeon_name == ENVIRO2
{
    if (floor(random(10))<1) and place_free(x,y) instance_create(x+8+choose(random(4),-random(4)),y+8+choose(random(4),-random(4)),choose(obj_Metal_Barrel,obj_Barrel,obj_Tires,obj_Plant));    
}else
if global.dungeon_name == ENVIRO3
{
    if instance_place(x-16,y,obj_Wall) or instance_place(x+48,y,obj_Wall) or instance_place(x,y-16,obj_Wall) or instance_place(x,y+48,obj_Wall)
        if random(8) < 1 and place_free(x,y)
            instance_create(x+8+choose(random(4),-random(4)),y+8+choose(random(4),-random(4)),choose(obj_Ice_Tree,obj_Ice_Crate,obj_Ice_Plant,obj_Ice_Block));
        else
        {
            if global.boss_rm+1== 2 and !instance_exists(obj_Fae_Tree) and distance_to_object(obj_Hero) > 64
                instance_create(x+8+choose(random(4),-random(4)),y+8+choose(random(4),-random(4)),obj_Fae_Tree);   
        }            
}else
if global.dungeon_name == ENVIRO4
{
    if instance_place(x-16,y,obj_Wall) or instance_place(x+48,y,obj_Wall) or instance_place(x,y-16,obj_Wall) or instance_place(x,y+48,obj_Wall)
        if random(5) < 1 and place_free(x,y)
            instance_create(x+8+choose(random(4),-random(4)),y+8+choose(random(4),-random(4)),choose(obj_Candle_Stand,obj_Table,obj_Shelf));
}else
if global.dungeon_name == SECRET1
{
    if instance_place(x-16,y,obj_Wall) or instance_place(x+48,y,obj_Wall) or instance_place(x,y-16,obj_Wall) or instance_place(x,y+48,obj_Wall)
        if random(3) < 1 and place_free(x,y)
            instance_create(x+8+choose(random(4),-random(4)),y+8+choose(random(4),-random(4)),choose(obj_Candle_Stand,obj_Table,obj_Shelf));
           
    if (!killed_owl)
    { 
        if global.boss_rm+1 == 2 and !instance_exists(obj_Owl) and distance_to_object(obj_Hero) > 64
                    instance_create(x+8+choose(random(4),-random(4)),y+8+choose(random(4),-random(4)),obj_Owl);
    }
}else
if global.dungeon_name == SECRET2
{
    if instance_place(x-16,y,obj_Wall) or instance_place(x+48,y,obj_Wall) or instance_place(x,y-16,obj_Wall) or instance_place(x,y+48,obj_Wall)
        if random(1) < 1 and tile_layer_find(100,x,y)
            repeat(random(3))
                instance_create(x+8+choose(random(8),-random(8)),y+8+choose(random(8),-random(8)),obj_Flowers);
}
