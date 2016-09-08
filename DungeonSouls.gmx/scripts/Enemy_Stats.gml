gml_pragma("forceinline");
switch(name)
{

    case "SPIDER ROBOT":
        level       = global.level;
        maxhp       = 4
        meleedamage = 1;
        damage      = 0;
        defense     = 1;
        bon_defense = 0;
        dam_bon     = 0;
        mg_dam      = 5;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;
        Stats_Set(0,0,0,0,95,3,2,5,0,0,0,1,0,0,0,0);     
        expdrop     = 2*global.loop
        coin        = 2;        
        size        = 1
        sight_range = 256;
        maxspeed    = 3/2;
        break;  
    //DARK DUNGEONS
    case "BAT":
        level       = global.level;
        maxhp       = 4
        meleedamage = 1;
        damage      = 0;
        defense     = 1;
        bon_defense = 0;
        dam_bon     = 0;
        mg_dam      = 5;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;
        Stats_Set(0,0,0,0,95,3,2,5,0,0,0,1,0,0,0,0);     
        expdrop     = 2*global.loop
        coin        = 2;        
        size        = 1
        sight_range = 256;
        maxspeed    = 3/2;
        break;  
    case "GHOST":
        level       = global.level;
        maxhp       = 12
        meleedamage = 4;
        damage      = 0;
        defense     = 1;
        bon_defense = 0;
        dam_bon     = 0;
        mg_dam      = 4;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;
        Stats_Set(0,0,0,0,95,3,2,5,0,0,0,1,0,0,0,0);     
        expdrop     = 2*global.loop
        coin        = 0;        
        size        = 1
        sight_range = 256;
        maxspeed    = 1.2;
        break;              
    case "SKELETON":
        level       = global.level;
        maxhp       = 16;
        meleedamage = 0;
        damage      = 5;
        dam_bon     = 1;
        defense     = 1;        
        bon_defense = 0;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
        expdrop     = 4;        
        coin        = 5;
        size        = 1;
        sight_range = 64; 
        maxspeed    = 2/2; 
        break;
    case "SKELETON WARRIOR":
        level       = global.level;
        maxhp       = 16;
        meleedamage = 0;        
        damage      = 6;
        dam_bon     = 4;        
        defense     = 1;
        bon_defense = 1;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0);        
        expdrop     = 4;        
        coin        = 5;        
        size        = 1;
        sight_range = 64;
        maxspeed    = 3/2;            
        break;
    case "SKELETON ARCHER":
        level       = global.level;
        maxhp       = 16;
        meleedamage = 0;
        damage      = 10;
        dam_bon     = 4;
        defense     = 1;
        bon_defense = 1;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0);                              
        expdrop     = 4;        
        coin        = 6;        
        size        = 1;
        sight_range = 128;
        maxspeed    = 3/2;
        break;        
    case "SKELETON MAGE":
        level       = global.level;
        maxhp       = 20;
        meleedamage = 0;
        damage      = 6;
        dam_bon     = 2;
        defense     = 1;
        bon_defense = 0;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0); 
        expdrop     = 4*global.loop        
        coin        = 4;        
        size        = 1
        sight_range = 64;    
        maxspeed    = 1.5/2;
        break;
    case "TAURUS":
        level       = global.level;
        maxhp       = 100;
        meleedamage = 0*global.loop
        damage      = 15;
        dam_bon     = 4;
        defense     = 4;
        bon_defense = 1;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;         
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0);     
        expdrop     = 6*global.loop        
        coin        = 10;        
        size        = 2
        sight_range = 128;
        maxspeed    = 1/2;
        break;        
    case "RED DEVIL":
        level       = global.level;
        maxhp       = 20;
        meleedamage = 0//Random(8,12);
        damage      = 0;
        defense     = 1;
        bon_defense = 0;        
        dam_bon     = 0;
        mg_dam      = 24/3;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;                
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);       
        expdrop     = 4*global.loop
        coin        = 6;
        size        = 1
        sight_range = 128;
        maxspeed    = 3/2;
        break;         
    case "SKELETON KING":
        level       = global.level;
        maxhp       = 800;
        meleedamage = 0*global.loop
        damage      = 5;
        dam_bon     = 4;
        defense     = 1;
        bon_defense = 0;
        mg_dam      = 5;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,1,50,0,0,3);          
        expdrop     = 30*global.loop        
        coin        = 20;
        size        = 4
        sight_range = 48;
        maxspeed    = 3;
        break;        
    
    
    //SEWERS
    case "RAT":
        level       = global.level;
        maxhp       = 30;
        meleedamage = 10;
        damage      = 4;
        dam_bon     = 4;
        defense     = 1;
        bon_defense = 0;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,100,3,3,5,0,0,0,0,0,0,0,0);               
        expdrop     = 8*global.loop        
        coin        = 3;        
        size        = 1
        sight_range = 160;
        maxspeed    = 2;
        break;    
    case "SLIME":
        level       = global.level;
        maxhp       = 32;
        meleedamage = 15;
        damage      = 8;
        dam_bon     = 0;
        defense     = 2;
        bon_defense = 0;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,95,10,5,3,0,0,0,0,0,0,0,0);     
        expdrop     = 6*global.loop        
        coin        = 8;        
        size        = 1
        sight_range = 96;
        maxspeed    = 1;
        break;
    case "EXPLOSIVE SLIME":
        level       = global.level;
        maxhp       = 15;
        meleedamage = 6;
        damage      = 20;
        dam_bon     = 0;
        defense     = 4;
        bon_defense = 0;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 3;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,95,10,5,3,0,0,0,0,0,0,0,0);     
        expdrop     = 7*global.loop        
        coin        = 12;        
        size        = 1
        sight_range = 96;
        maxspeed    = 1;
        break;
    case "HIVE":
        level       = global.level;
        maxhp       = 10;
        meleedamage = 1;
        damage      = 4;
        dam_bon     = 0;
        defense     = 6;
        bon_defense = 0;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 3;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,95,10,5,3,0,0,0,0,0,0,0,0);     
        expdrop     = 6*global.loop        
        coin        = 8;        
        size        = 1
        sight_range = 96;
        maxspeed    = 2/2;
        break;
    case "SLIME CHILD":
        level       = global.level;
        maxhp       = 24;
        meleedamage = 8;
        damage      = 6;
        dam_bon     = 0;
        defense     = 1;
        bon_defense = 0;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,99,5,3,10,0,0,0,0,0,0,0,0);
        expdrop     = 6*global.loop        
        coin        = 1;        
        size        = 1
        sight_range = 96;
        maxspeed    = 4/2;
        break;
    case "SLIME BOY":
        level       = global.level;
        maxhp       = 60;
        meleedamage = 11;
        damage      = 3;
        dam_bon     = 0;
        defense     = 1;
        bon_defense = 0;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,90,8,3,3,0,0,0,0,80,0,0,5);     
        expdrop     = 10*global.loop        
        coin        = 6;        
        size        = 4
        sight_range = 128;
        maxspeed    = 2/2;
        break; 
    case "MUSHROOM":
        level       = global.level;
        maxhp       = 32;
        meleedamage = 0;
        damage      = 1;
        dam_bon     = 2;
        defense     = 1;
        bon_defense = 0;
        mg_dam      = 15;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,95,20,5,3,0,0,0,0,0,0,0,0);       
        expdrop     = 12*global.loop        
        coin        = 8;        
        size        = 2
        sight_range = 128;
        maxspeed    = 2/2;
        break;
    case "CRYSTAL GREEN":
        level       = global.level;
        maxhp       = 30;
        meleedamage = 12;
        damage      = 8;
        dam_bon     = 0;        
        defense     = 5;
        bon_defense = 0;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);       
        expdrop     = 2*global.loop
        coin        = 1;
        size        = 1
        sight_range = 120;
        maxspeed    = 3/2;
        break;        
    case "SLIME BOSS":
        level       = global.level;
        maxhp       = 1200;
        meleedamage = 0;
        damage      = 10;
        dam_bon     = 4;
        defense     = 1;
        bon_defense = 0;
        mg_dam      = 8;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,98,10,2,5,0,0,0,0,0,0,0,0);      
        expdrop     = 50*global.loop        
        coin        = 40;
        size        = 4
        sight_range = 256;
        maxspeed    = 2;
        break; 
    case "BEETLE":
        level       = global.level;
        maxhp       = 25;
        meleedamage = 0*global.loop
        damage      = 10;
        dam_bon     = 5;
        defense     = 2;
        bon_defense = 1;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,95,8,3,5,0,0,0,0,0,0,0,0);     
        expdrop     = 8*global.loop
        coin        = 8;        
        size        = 1
        sight_range = 128;
        maxspeed    = 3/2;
        break;
        
    //ICE LAND   
    case "ICE EYEBALL":
        level       = global.level;
        maxhp       = 40;
        meleedamage = 4;
        damage      = 0;
        defense     = 1;
        bon_defense = 0;        
        dam_bon     = 0;
        mg_dam      = (28)/3;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,95,0,0,3);
        expdrop     = 4*global.loop
        coin        = 6;        
        size        = 1
        sight_range = 256;
        maxspeed    = 3/2;
        break;
    case "ICE GOLEM SMALL":
        level       = global.level;
        maxhp       = 50;
        meleedamage = 4;
        damage      = 0;
        defense     = 1;
        bon_defense = 0;        
        dam_bon     = 0;
        mg_dam      = (28)/3;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,95,0,0,3);
        expdrop     = 4*global.loop
        coin        = 6;        
        size        = 1
        sight_range = 256;
        maxspeed    = 3/2;
        break;         
    case "CRYSTAL MONSTER":
        level       = global.level;
        maxhp       = 120;
        meleedamage = 0;
        damage      = 5;
        defense     = 100;
        bon_defense = 0;        
        dam_bon     = 0;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,95,0,0,3);
        expdrop     = 30*global.loop
        coin        = 6;        
        size        = 2
        sight_range = 256;
        maxspeed    = 2/2;
        break;                 
    case "SNOWMAN":
        level       = global.level;
        maxhp       = 80;
        meleedamage = 0;
        damage      = 10;
        dam_bon     = 4;
        defense     = 2;
        bon_defense = 1;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,95,0,0,5);     
        expdrop     = 8;        
        coin        = 10;        
        size        = 1;
        sight_range = 64;
        maxspeed    = 3/2;            
        break; 
    case "YETI":
        level       = global.level;
        maxhp       = 160;
        meleedamage = 8;
        damage      = 20;
        dam_bon     = 10;
        defense     = 5;
        bon_defense = 2;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,2,95,0,0,8);       
        expdrop     = 12*global.loop        
        coin        = 12;        
        size        = 4
        sight_range = 100;
        maxspeed    = 3;
        break;
    case "ICE GOLEM":
        level       = global.level;
        maxhp       = 2000;
        meleedamage = 0
        damage      = 10;
        dam_bon     = 5;
        defense     = 1;
        bon_defense = 0; 
        mg_dam      = 10;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,3,90,0,0,8);     
        expdrop     = 100*global.loop        
        coin        = 40;
        size        = 8
        sight_range = 256;
        maxspeed    = 6;
        break;
    case "LADY LAINE":
        level       = global.level;
        maxhp       = 2000;
        meleedamage = 0
        damage      = 10;
        dam_bon     = 5;
        defense     = 1;
        bon_defense = 0; 
        mg_dam      = 10;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,3,90,0,0,8);     
        expdrop     = 100*global.loop        
        coin        = 40;
        size        = 8
        sight_range = 256;
        maxspeed    = 6;
        break;        
    
    //CATHEDRAL     
    case "TAREYE":
        level       = global.level;
        maxhp       = 90;
        meleedamage = 5;
        damage      = 0;
        dam_bon     = 0;
        defense     = 2;
        bon_defense = 0;
        mg_dam      = 25;
        mg_bon      = 10;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,80,5,5,5,0,0,0,0,0,0,0,0);     
        expdrop     = 10;        
        coin        = 10;
        size        = 2;
        sight_range = 96; 
        maxspeed    = 2/2; 
        break;
    case "FLY":
        level       = global.level;
        maxhp       = 70;
        meleedamage = 20;
        damage      = 0;
        defense     = 1;
        bon_defense = 0;        
        dam_bon     = 0;
        mg_dam      = 13;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,95,5,1,5,0,0,0,0,0,0,0,0);      
        expdrop     = 8*global.loop
        coin        = 8;        
        size        = 1
        sight_range = 256;
        maxspeed    = 1;
        break;                
    case "BLACK DEVIL":
        level       = global.level;
        maxhp       = 85;
        meleedamage = 0;
        damage      = 22;
        defense     = 4;
        bon_defense = 0;        
        dam_bon     = 0;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,50,0,0,3);  
        expdrop     = 10*global.loop
        coin        = 12;
        size        = 2
        sight_range = 150;
        maxspeed    = 3;
        break;        
    case "EYE":
        level       = global.level;
        maxhp       = 60;
        meleedamage = 12;
        damage      = 0;
        defense     = 1;
        bon_defense = 0;        
        dam_bon     = 0;
        mg_dam      = 12;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);       
        expdrop     = 2*global.loop
        coin        = 3;
        size        = 1
        sight_range = 120;
        maxspeed    = 2;
        break; 
    case "EVIL EYE":
        level       = global.level;
        maxhp       = 100;
        meleedamage = 30;
        damage      = 0;
        defense     = 2;
        bon_defense = 0;        
        dam_bon     = 0;
        mg_dam      = 15;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
        expdrop     = 2*global.loop
        coin        = 3;
        size        = 1
        sight_range = 200;
        maxspeed    = 1;
        break;               
    case "SHADOW EYE":
        level       = global.level;
        maxhp       = 20;
        meleedamage = 8;
        damage      = 5;
        dam_bon     = 2;
        defense     = 1;
        bon_defense = 0;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);        
        expdrop     = 10;        
        coin        = 8;
        size        = 1;
        sight_range = 256;
        maxspeed    = 3/2;
        break;
    case "SOUL GUARDIAN":
        level       = global.level;
        maxhp       = 2500;
        meleedamage = 0
        damage      = 25;
        dam_bon     = 10;
        defense     = 1;
        bon_defense = 0; 
        mg_dam      = 8;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,3,10,0,0,5);     
        expdrop     = 150*global.loop        
        coin        = 40;
        size        = 4
        sight_range = 256;
        maxspeed    = 6;
        break;        
        
        
    //MAGMA
    case "DRAGON":
        level       = global.level;
        maxhp       = 150
        meleedamage = 0
        damage      = 0;
        dam_bon     = 0;
        defense     = 2;
        bon_defense = 0;
        mg_dam      = 35;
        mg_bon      = 5;
        mresist     = 1;
        mr_bon      = 0;           
        Stats_Set(90,3,5,3,0,0,0,0,0,0,0,1,0,0,0,0);  
        expdrop     = 40*global.loop        
        coin        = 10;        
        size        = 3
        sight_range = 128;
        maxspeed    = 1/2;
        break;        
    case "MAGMA ELEMENTAL":
        level       = global.level;
        maxhp       = 10*global.loop
        meleedamage = Random(8,12);
        damage      = Random(2,4);
        dam_bon     = 0;        
        defense     = 3;
        bon_defense = 0;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,10,0,0,1,0,0,0,0);       
        expdrop     = 2*global.loop
        coin        = 1;
        size        = 2
        sight_range = 120;
        maxspeed    = 3/2;
        break; 
    case "MAGMA SHELL":
        level       = global.level;
        maxhp       = 12*global.loop
        meleedamage = Random(2,5);
        damage      = Random(8,12);
        dam_bon     = 0;        
        defense     = 10;
        bon_defense = 0;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;         
        Stats_Set(0,0,0,0,0,0,0,0,10,0,0,1,0,0,0,0);     
        expdrop     = 2*global.loop
        coin        = 1;
        size        = 2
        sight_range = 125;
        maxspeed    = 1;
        break;        

    case "PURPLE WIZARD":
        level       = global.level;
        maxhp       = 5;
        meleedamage = 0//Random(8,12);
        damage      = 0;
        defense     = 1;
        bon_defense = 0;        
        dam_bon     = 0;
        mg_dam      = (20)/20;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;                
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);       
        expdrop     = 8*global.loop
        coin        = 4;
        size        = 1
        sight_range = 128;
        maxspeed    = 3/2;
        break;

    case "GREEN WIZARD":
        level       = global.level;
        maxhp       = 20;
        meleedamage = 0//Random(8,12);
        damage      = 0;
        defense     = 1;
        bon_defense = 0;        
        dam_bon     = 0;
        mg_dam      = (60)/8;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;                
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);       
        expdrop     = 8*global.loop
        coin        = 4;
        size        = 1
        sight_range = 128;
        maxspeed    = 3/2;
        break;        

    case "RED WIZARD":
        level       = global.level;
        maxhp       = 20;
        meleedamage = 0//Random(8,12);
        damage      = 0;
        defense     = 1;
        bon_defense = 0;        
        dam_bon     = 0;
        mg_dam      = (60)/6;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;                
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);       
        expdrop     = 8*global.loop
        coin        = 4;
        size        = 1
        sight_range = 128;
        maxspeed    = 3/2;
        break; 
        
    case "MERLIN":
        level       = global.level;
        maxhp       = 700;
        meleedamage = 0*global.loop
        damage      = 2;
        dam_bon     = 1;
        defense     = 2;
        bon_defense = 0;
        mg_dam      = 10;
        mg_bon      = 2;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,1,50,0,0,3);          
        expdrop     = 30*global.loop        
        coin        = 20;
        size        = 2
        sight_range = 128;
        maxspeed    = 3.2;
        break;
        
    case "DARK MERLIN":
        level       = global.level;
        maxhp       = 300;
        meleedamage = 0*global.loop
        damage      = 2;
        dam_bon     = 0;
        defense     = 10;
        bon_defense = 0;
        mg_dam      = 8;
        mg_bon      = 2;
        mresist     = 10;
        mr_bon      = 0;        
        Stats_Set(30,1,1,4,0,0,0,0,0,0,0,0,0,0,0,0);          
        expdrop     = 1500*global.loop        
        coin        = 20;
        size        = 2
        sight_range = 128;
        maxspeed    = 3.2;
        break;
        
    //FAE GARDEN
    case "SPRITE":
        level       = global.level;
        maxhp       = 80;
        meleedamage = 0//Random(8,12);
        damage      = 1;
        defense     = 2;
        bon_defense = 0;        
        dam_bon     = 0;
        mg_dam      = 50/3;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;                
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);       
        expdrop     = 16*global.loop
        coin        = 4;
        size        = 2
        sight_range = 128;
        maxspeed    = 3/2;
        break;                   
    case "JELLY":
        level       = global.level;
        maxhp       = 50;
        meleedamage = 0//Random(8,12);
        damage      = 1;
        defense     = 1;
        bon_defense = 0;        
        dam_bon     = 0; 
        mg_dam      = 50/16;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;               
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);       
        expdrop     = 16*global.loop
        coin        = 6;
        size        = 2
        sight_range = 128;
        maxspeed    = 3/2;
        break;
    case "FAE BUG":
        level       = global.level;
        maxhp       = 1800;
        meleedamage = 0
        damage      = 10;
        dam_bon     = 5;
        defense     = 1;
        bon_defense = 0; 
        mg_dam      = 10;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,10,3,5,5,0,0,0,0,0,0,0,0);     
        expdrop     = 100*global.loop        
        coin        = 40;
        size        = 8
        sight_range = 256;
        maxspeed    = 8;
        break;        
    
    //FINAL BOSS
    case "JUDGEMENT":
        level       = global.level;
        maxhp       = 10000;
        meleedamage = 0
        damage      = 25;
        dam_bon     = 12;
        defense     = 4;
        bon_defense = 10;
        mg_dam      = 10;
        mg_bon      = 0;
        mresist     = 10;
        mr_bon      = 0;         
        Stats_Set(10,0.1,1,1,10,.5,1,1,0,0,0,3,10,0,0,5);     
        expdrop     = 1000*global.loop        
        coin        = 60;
        size        = 8
        sight_range = 256;
        maxspeed    = 0;
        break;
    case "JUDGEMENT II":
        level       = global.level;
        maxhp       = 8000;
        meleedamage = 0
        damage      = 25;
        dam_bon     = 12;
        defense     = 20;
        bon_defense = 0;
        mg_dam      = 12;
        mg_bon      = 0;
        mresist     = 20;
        mr_bon      = 0;         
        Stats_Set(10,0.1,1,1,10,.5,1,1,0,0,0,3,10,0,0,5);     
        expdrop     = 1000*global.loop        
        coin        = 60;
        size        = 8
        sight_range = 256;
        maxspeed    = 4;
        break;
              
    //SOUL STEALER
    case "SS WARRIOR":
        level       = global.level;
        maxhp       = 160;
        meleedamage = 0;        
        damage      = 12;
        dam_bon     = 6;        
        defense     = 3;
        bon_defense = 1;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 2;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0);        
        expdrop     = 8;        
        coin        = 2;        
        size        = 1;
        sight_range = 64;
        maxspeed    = 2;            
        break;

    case "SS ARCHER":
        level       = global.level;
        maxhp       = 140;
        meleedamage = 0;
        damage      = 10;
        dam_bon     = 10;
        defense     = 1;
        bon_defense = 1;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0);                              
        expdrop     = 4;        
        coin        = 2;        
        size        = 1;
        sight_range = 256;
        maxspeed    = 2;
        break;

    case "SS MAGE":
        level       = global.level;
        maxhp       = 100;
        meleedamage = 0;
        damage      = 15;
        dam_bon     = 10;
        defense     = 1;
        bon_defense = 1;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 5;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0);                              
        expdrop     = 2;        
        coin        = 2;        
        size        = 1;
        sight_range = 256;
        maxspeed    = 3;
        break;
                                   
    default:
        level       = global.level;
        maxhp       = 8;        
        meleedamage = 8;
        damage      = 8;
        dam_bon     = 8;
        defense     = 1;
        bon_defense = 0;
        mg_dam      = 0;
        mg_bon      = 0;
        mresist     = 1;
        mr_bon      = 0;        
        Stats_Set(0,0,0,0,0,0,0,0,10,0,0,1,0,0,0,0);      
        expdrop     = 4;        
        coin        = 3;
        size        = 1;
        sight_range = 64;
        maxspeed    = 3/2;
        break;           
}
switch(global.difficulty)
{
    case "Easy":
        maxhp       -= (50/100)*maxhp;
        meleedamage -= max((50/100)*meleedamage,0)
        damage      -= max((50/100)*damage,0)
        mg_dam      -= max((50/100)*mg_dam,0)
        expdrop     /= 2;
        break;
    case "Normal":
        break;
    case "Nightmare":
        maxhp       += (2)*maxhp
        meleedamage += (2)*meleedamage
        damage      += (2)*damage
        dam_bon     += (2)*dam_bon
        defense     += (2)*defense;
        bon_defense += (2)*bon_defense;        
        mg_dam      += (2)*mg_dam;
        mg_bon      += (2)*mg_bon;
        mresist     += (2)*mresist;
        mr_bon      += (2)*mr_bon;
        expdrop     *= 3;
        maxspeed    += .5;
        break;
    case "Impossible":
        maxhp       += (3)*maxhp
        meleedamage += (2.5)*meleedamage
        damage      += (2.5)*damage
        dam_bon     += (2.5)*dam_bon
        defense     += (2.5)*defense;
        bon_defense += (2.5)*bon_defense;        
        mg_dam      += (2.5)*mg_dam;
        mg_bon      += (2.5)*mg_bon;
        mresist     += (2.5)*mresist;
        mr_bon      += (2.5)*mr_bon;
        expdrop     *= 4;
        maxspeed    += .6;
        break;         
    default:
        break;
}

//SCALING
var scaling_offset;
if global.loop > 1
{
    switch(global.difficulty)
    {
        case EASY:
            scalling_offset=0.7*global.loop;
            maxhp       += (scalling_offset)*maxhp;
            meleedamage += (scalling_offset)*meleedamage;
            damage      += (scalling_offset)*damage;
            dam_bon     += (scalling_offset)*dam_bon;
            defense     += (scalling_offset)*defense;
            bon_defense += (scalling_offset)*bon_defense;
            mg_dam      += (scalling_offset)*mg_dam;
            mg_bon      += (scalling_offset)*mg_bon;
            mresist     += (scalling_offset)*mresist;
            mr_bon      += (scalling_offset)*mr_bon;
            expdrop     += (scalling_offset)*expdrop;
            coin        += (scalling_offset)*coin;
            maxspeed    += (scalling_offset)*maxspeed;
            break;
        case NORMAL:
            scalling_offset=sqrt(global.loop)*global.loop;
            maxhp       += (scalling_offset)*maxhp;
            meleedamage += (scalling_offset)*meleedamage;
            damage      += (scalling_offset)*damage;
            dam_bon     += (scalling_offset)*dam_bon;
            defense     += (scalling_offset)*defense;
            bon_defense += (scalling_offset)*bon_defense;
            mg_dam      += (scalling_offset)*mg_dam;
            mg_bon      += (scalling_offset)*mg_bon;
            mresist     += (scalling_offset)*mresist;
            mr_bon      += (scalling_offset)*mr_bon;            
            expdrop     += (scalling_offset)*expdrop;
            coin        += (scalling_offset)*coin;
            maxspeed    += (scalling_offset)*maxspeed;
            break;
        case HARD:
            scalling_offset=global.loop*global.loop*0.5;// (x^2)/2
            maxhp       += (scalling_offset)*maxhp;
            meleedamage += (scalling_offset)*meleedamage;
            damage      += (scalling_offset)*damage;
            dam_bon     += (scalling_offset)*dam_bon;
            defense     += (scalling_offset)*defense;
            bon_defense += (scalling_offset)*bon_defense;
            mg_dam      += (scalling_offset)*mg_dam;
            mg_bon      += (scalling_offset)*mg_bon;
            mresist     += (scalling_offset)*mresist;
            mr_bon      += (scalling_offset)*mr_bon;            
            expdrop     += (scalling_offset)*expdrop;
            coin        += (scalling_offset)*coin;
            maxspeed    += (scalling_offset)*maxspeed;
            break;
        case IMPOSSIBLE:
            scalling_offset=global.loop*global.loop;
            maxhp       += (scalling_offset)*maxhp;
            meleedamage += (scalling_offset)*meleedamage;
            damage      += (scalling_offset)*damage;
            dam_bon     += (scalling_offset)*dam_bon;
            defense     += (scalling_offset)*defense;
            bon_defense += (scalling_offset)*bon_defense;
            mg_dam      += (scalling_offset)*mg_dam;
            mg_bon      += (scalling_offset)*mg_bon;
            mresist     += (scalling_offset)*mresist;
            mr_bon      += (scalling_offset)*mr_bon;            
            expdrop     += (scalling_offset)*expdrop;
            coin        += (scalling_offset)*coin;
            maxspeed    += (scalling_offset)*maxspeed;
            break;                       
        default:
            break;            
    }
}
if maxspeed > 3 then maxspeed = 3
if Item_In_List(spr_Devil_Hoof)
    maxspeed += 0.3;
/*with obj_Hero
{
    with other
    {
        maxhp       += maxhp*((50/100)*other.rank[other.char])
        meleedamage += meleedamage*((20/100)*other.rank[other.char])
        damage      += damage*((20/100)*other.rank[other.char])
    }
}*/
