gml_pragma("forceinline");
if act == false && instance_exists(obj_Hero) {
   if instance_number(obj_Enemy) < 40 {
      if !instance_exists(obj_Enemy) {                                 
         repeat (floor(random_range(2,4))) {
                
                var xx = x+lengthdir_x(16,random(360));
                var yy = y+lengthdir_y(16,random(360));
                obj = instance_create(xx,yy,obj_Spawn);
                
                switch (global.dungeon_name) {
                
                       case ENVIRO1:
                       switch (global.dungeon) {
                        
                              case 1:
                              obj.object = choose(obj_Skeleton,obj_Bat);
                              break;
                              case 2:
                              obj.object = choose(obj_Eye_Enemy,obj_Shadow_Eye,obj_Skeleton,obj_Bat,obj_Skeleton_Warrior,obj_Skeleton_Archer,obj_Skeleton_Mage,obj_Red_Devil);
                              break;
                              default:
                              obj.object = choose(obj_Shadow_Eye,obj_Skeleton,obj_Bat,obj_Taurus,obj_Skeleton_Warrior,obj_Skeleton_Archer,obj_Skeleton_Mage,obj_Red_Devil);
                              break;                            
                        }
                        break;
                
                        case ENVIRO2:
                        obj.object = choose(obj_Slime,obj_SlimeBoy,obj_Explosive_Slime,obj_Beetle,obj_SlimeB,obj_Mushroom,obj_Explosive_Slime);
                        break;
                
                        case ENVIRO3:
                        obj.object = choose(obj_Yeti,obj_Snowman,obj_Ice_Eyeball,obj_Skeleton_Archer) 
                        break;
                    
                        case ENVIRO4:                       
                        obj.object = choose(obj_Black_Ball_Eye,obj_Shadow_Eye,obj_Fly,obj_Skeleton_Mage,obj_Black_Devil);
                        break;
                }
      } 
    } else {
      if random(100-90) < 1 {    
         repeat (floor(random_range(1,2))) {
                var xx = x+lengthdir_x(16,random(360));
                var yy = y+lengthdir_y(16,random(360));
                obj = instance_create(xx,yy,obj_Spawn);
                    
                switch (global.dungeon_name) {
                    
                       case ENVIRO1:
                       switch (global.dungeon) {
                              case 1:
                              obj.object = choose(obj_Shadow_Eye,obj_Skeleton,obj_Bat);
                              break;
                              case 2:
                              obj.object = choose(obj_Eye_Enemy,obj_Shadow_Eye,obj_Skeleton,obj_Bat,obj_Skeleton_Warrior,obj_Skeleton_Archer,obj_Skeleton_Mage,obj_Red_Devil);
                              break;                                
                              default:
                              obj.object = choose(obj_Shadow_Eye,obj_Skeleton,obj_Bat,obj_Taurus,obj_Skeleton_Warrior,obj_Skeleton_Archer,obj_Skeleton_Mage,obj_Red_Devil);
                              break;                            
                       }
                       break;
                       case ENVIRO2:
                       obj.object = choose(obj_Slime,obj_SlimeBoy,obj_Explosive_Slime,obj_Beetle,obj_SlimeB,obj_Mushroom);
                       break;
                       case ENVIRO3:
                       obj.object = choose(obj_Yeti,obj_Snowman,obj_Ice_Eyeball,obj_Skeleton_Archer) 
                       break;
                       case ENVIRO4:                       
                       obj.object = choose(obj_Black_Ball_Eye,obj_Shadow_Eye,obj_Fly,obj_Skeleton_Mage,obj_Black_Devil);
                       break;
                }
         }
      }
    }
   }
}
