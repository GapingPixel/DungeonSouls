gml_pragma("forceinline");
if global.boss_rm+1 != 3 and instance_number(obj_Enemy) < 10
{
    with instance_find(obj_Clearer,Random(0,instance_number(obj_Clearer)))
    {
        if global.loop < 2
        {
            switch (global.dungeon_name) {
            
            case ENVIRO1:
                 switch (global.TYPE) {
                        case 1:
                        if (floor(random(25))<1)        Spawn(x+16,y+16,obj_Skeleton);
                        else if (floor(random(80))<1)   Spawn(x+16,y+16,obj_Shadow_Eye);
                        else if (floor(random(15))<1)   Spawn(x+16,y+16,obj_Skeleton_Mage);
                        else if (floor(random(5))<1)    Spawn(x+16,y+16,obj_Red_Devil);
                        else if (floor(random(30))<1)   Spawn(x+16,y+16,obj_Taurus);
                        break;
                
                        case 2:
                        if (floor(random(25))<1)        Spawn(x+16,y+16,obj_Skeleton_Warrior);
                        else if (floor(random(80))<1)   Spawn(x+16,y+16,obj_Shadow_Eye);
                        else if (floor(random(15))<1)   Spawn(x+16,y+16,obj_Skeleton_Archer);
                        else if (floor(random(5))<1)    Spawn(x+16,y+16,obj_Bat);
                        else if (floor(random(30))<1)   Spawn(x+16,y+16,obj_Taurus);
                        break;
                }
            break;
                
            case ENVIRO2:
            
                 switch (global.TYPE) {
                
                        case 1:
                        if (floor(random(3))<1)         Spawn(x+16,y+16,obj_Slime);
                        else if (floor(random(20))<1)   Spawn(x+16,y+16,obj_Rat);
                        else if (floor(random(50))<1)   Spawn(x+16,y+16,obj_Mushroom);
                        else if (floor(random(60))<1)   Spawn(x+16,y+16,obj_SlimeBoy);
                        break;
                            
                        case 2:
                        if (floor(random(10))<1)        Spawn(x+16,y+16,obj_Beetle);
                        else if (floor(random(5))<1)    Spawn(x+16,y+16,obj_Rat);                        
                        else if (floor(random(20))<1)   Spawn(x+16,y+16,obj_Mushroom);
                        break; 
                }          
            break;
                
            case ENVIRO3:
            
            if (floor(random(10))<1)            Spawn(x+16,y+16,obj_Ice_Eyeball);
            else if (floor(random(20))<1)       Spawn(x+16,y+16,obj_Snowman);
            else if (floor(random(80))<1)       Spawn(x+16,y+16,obj_Crystal_Monster);
            else if (floor(random(30))<1)       Spawn(x+16,y+16,obj_Yeti);                    
            break;
            
            case ENVIRO4:
            
            if (floor(random(5))<1)             Spawn(x+16,y+16,obj_Fly);
            else if (floor(random(15))<1)       Spawn(x+16,y+16,obj_Shadow_Eye);
            else if (floor(random(10))<1)       Spawn(x+16,y+16,obj_Black_Devil);
            else if (floor(random(20))<1)       Spawn(x+16,y+16,obj_Black_Ball_Eye);                    
            else if (floor(random(30))<1)       Spawn(x+16,y+16,obj_Skeleton_Mage);
            break;
            
            case ENVIRO5:
            
                switch (global.TYPE) {
                       case 1:
                
                       if (floor(random(25))<1)        Spawn(x+16,y+16,obj_Dragon)
                       else if (floor(random(80))<1)   Spawn(x+16,y+16,obj_Shadow_Eye) ;
                       else if (floor(random(15))<1)   Spawn(x+16,y+16,obj_Skeleton_Mage);
                       else if (floor(random(5))<1)    Spawn(x+16,y+16,obj_Red_Devil);
                       else if (floor(random(30))<1)   Spawn(x+16,y+16,obj_Taurus);
                       break;
                       
                       case 2:                        
                       if (floor(random(25))<1)        Spawn(x+16,y+16,obj_Skeleton_Warrior);
                       else if (floor(random(80))<1)   Spawn(x+16,y+16,obj_Shadow_Eye);
                       else if (floor(random(15))<1)   Spawn(x+16,y+16,obj_Skeleton_Archer);
                       else if (floor(random(5))<1)    Spawn(x+16,y+16,obj_Dragon);
                       else if (floor(random(30))<1)   Spawn(x+16,y+16,obj_Taurus);
                       break;
            }
                
            case SECRET1:
            if (floor(random(25))<1)        Spawn(x+16,y+16,obj_GWizard);
            else if (floor(random(80))<1)   Spawn(x+16,y+16,obj_PWizard);
            else if (floor(random(15))<1)   Spawn(x+16,y+16,obj_RWizard);
            break;
            
            case SECRET2:
            if (floor(random(25))<1)        Spawn(x+16,y+16,obj_Jelly);
            else if (floor(random(80))<1)   Spawn(x+16,y+16,obj_Sprite);
            break;
           
            default:
            if (floor(random(25))<1)        Spawn(x+16,y+16,obj_Skeleton);
            else if (floor(random(80))<1)   Spawn(x+16,y+16,obj_Shadow_Eye);
            else if (floor(random(15))<1)   Spawn(x+16,y+16,obj_Skeleton_Mage);
            else if (floor(random(5))<1)    Spawn(x+16,y+16,obj_Red_Devil);
            else if (floor(random(30))<1)   Spawn(x+16,y+16,obj_Taurus);
            else if (floor(random(25))<1)   Spawn(x+16,y+16,obj_Skeleton_Warrior);
            else if (floor(random(15))<1)   Spawn(x+16,y+16,obj_Skeleton_Archer);
            else if (floor(random(5))<1)    Spawn(x+16,y+16,obj_Bat);   
            else if (floor(random(3))<1)    Spawn(x+16,y+16,obj_Slime);
            else if (floor(random(20))<1)   Spawn(x+16,y+16,obj_Rat);
            else if (floor(random(50))<1)   Spawn(x+16,y+16,obj_Mushroom);
            else if (floor(random(60))<1)   Spawn(x+16,y+16,obj_SlimeBoy); 
            else if (floor(random(10))<1)   Spawn(x+16,y+16,obj_Beetle);
            else if (floor(random(10))<1)   Spawn(x+16,y+16,obj_Ice_Eyeball);
            else if (floor(random(20))<1)   Spawn(x+16,y+16,obj_Snowman);
            else if (floor(random(30))<1)   Spawn(x+16,y+16,obj_Yeti);
            else if (floor(random(5))<1)    Spawn(x+16,y+16,obj_Fly);
            else if (floor(random(10))<1)   Spawn(x+16,y+16,obj_Black_Devil);
            if (floor(random(20))<1)        Spawn(x+16,y+16,obj_Black_Ball_Eye); 
            break;                                                                                                                                              
        }
    }                   
}
}
