gml_pragma("forceinline");
repeat(20)
{
    obj = instance_create(x+choose(random(6),-random(6)),y+24+choose(random(6),-random(6)),obj_Levelup_Part)
    obj.direction = random(360);
    obj.speed = 1+random(1);
    obj.friction = 0.1  
    obj.depth = 99
}
repeat(25)
{
    obj = instance_create(x+choose(random(6),-random(6)),y+24+choose(random(6),-random(6)),obj_Levelup_Part)
    obj.direction = random_range(70,110);
    obj.speed = 3+random(3);
    obj.depth = -room_height*3
}
