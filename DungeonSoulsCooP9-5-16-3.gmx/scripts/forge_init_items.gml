///forge_init_items()
gml_pragma("forceinline");
/*
    Initializes the databank of weapons and items of the forge
*/
global.forgedb_max_items=35;

//Default hero weapons must always be in the following order: i = non-neophyte weapon; i+1 = neophyte weapon

global.forgedb_item_id[0]=0;
global.forgedb_item_sprite[0]=spr_Barbarian_Axe;
global.forgedb_item_name[0]="Barbarian's Axe";
global.forgedb_item_description[0]="Barbarian's default weapon";
global.forgedb_item_type[0]="AXE";

global.forgedb_item_id[1]=1;
global.forgedb_item_sprite[1]=spr_Viking_Axe;
global.forgedb_item_name[1]="Viking's Axe";
global.forgedb_item_description[1]="Viking's default weapon";
global.forgedb_item_type[1]="AXE";

global.forgedb_item_id[2]=2;
global.forgedb_item_sprite[2]=spr_Archer_Bow;
global.forgedb_item_name[2]="Archer's Bow"
global.forgedb_item_description[2]="Archer's default weapon";
global.forgedb_item_type[2]="BOW";

global.forgedb_item_id[3]=3;
global.forgedb_item_sprite[3]=spr_Viper;
global.forgedb_item_name[3]="Viper";
global.forgedb_item_description[3]="Ranger's default weapon";
global.forgedb_item_type[3]="BOW";

global.forgedb_item_id[4]=4;
global.forgedb_item_sprite[4]=spr_Thief_Knife;
global.forgedb_item_name[4]="Thief's Knife";
global.forgedb_item_description[4]="Thief's default weapon";
global.forgedb_item_type[4]="KNIFE";

global.forgedb_item_id[5]=5;
global.forgedb_item_sprite[5]=spr_Rogue_Knife;
global.forgedb_item_name[5]="Rogue's Knife";
global.forgedb_item_description[5]="Rogue's default weapon";
global.forgedb_item_type[5]="KNIFE";

global.forgedb_item_id[6]=6;
global.forgedb_item_sprite[6]=spr_Warrior_Sword;
global.forgedb_item_name[6]="Warrior's Sword";
global.forgedb_item_description[6]="Warrior's default weapon";
global.forgedb_item_type[6]="SWORD";

global.forgedb_item_id[7]=7;
global.forgedb_item_sprite[7]=spr_Knight_Sword;
global.forgedb_item_name[7]="Knight's Sword";
global.forgedb_item_description[7]="Knight's default weapon";
global.forgedb_item_type[7]="SWORD";

global.forgedb_item_id[8]=8;
global.forgedb_item_sprite[8]=spr_Wizard_Staff;
global.forgedb_item_name[8]="Wizard's Staff";
global.forgedb_item_description[8]="Wizard's default weapon";
global.forgedb_item_type[8]="STAFF";

global.forgedb_item_id[9]=9;
global.forgedb_item_sprite[9]=spr_Archmage_Staff;
global.forgedb_item_name[9]="Archamge's Staff";
global.forgedb_item_description[9]="Archmage's default weapon";
global.forgedb_item_type[9]="STAFF";

global.forgedb_item_id[10]=10;
global.forgedb_item_sprite[10]=spr_Healer_Staff;
global.forgedb_item_name[10]="Cleric's Staff";
global.forgedb_item_description[10]="Cleric's default weapon";
global.forgedb_item_type[10]="STAFF";

global.forgedb_item_id[11]=11;
global.forgedb_item_sprite[11]=spr_Paladin_Staff;
global.forgedb_item_name[11]="Paladin's Staff";
global.forgedb_item_description[11]="Paladin's default weapon";
global.forgedb_item_type[11]="STAFF";

global.forgedb_item_id[12]=12;
global.forgedb_item_sprite[12]=spr_Necromancer_Staff;
global.forgedb_item_name[12]="Necromancer's Scepter";
global.forgedb_item_description[12]="Necromancer's default weapon";
global.forgedb_item_type[12]="SCEPTER";

global.forgedb_item_id[13]=13;
global.forgedb_item_sprite[13]=spr_Raven_Staff;
global.forgedb_item_name[13]="Raven's Staff";
global.forgedb_item_description[13]="Raven's default weapon";
global.forgedb_item_type[13]="STAFF";

global.forgedb_item_id[14]=14;
global.forgedb_item_sprite[14]=spr_Nightblade_Hammer;
global.forgedb_item_name[14]="Nightblade's Scepter";
global.forgedb_item_description[14]="Nightblade's default weapon";
global.forgedb_item_type[14]="AXE";

global.forgedb_item_id[15]=15;
global.forgedb_item_sprite[15]=spr_Destroyer_Hammer;
global.forgedb_item_name[15]="Destroyer's Hammer";
global.forgedb_item_description[15]="Destroyer's default weapon";
global.forgedb_item_type[15]="AXE";

global.forgedb_item_id[16]=16;
global.forgedb_item_sprite[16]=spr_Brawler_Weapon;
global.forgedb_item_name[16]="Brawler's Mace";
global.forgedb_item_description[16]="Brawler's default weapon";
global.forgedb_item_type[16]="AXE";

global.forgedb_item_id[17]=17;
global.forgedb_item_sprite[17]=spr_Duelist_Weapon;
global.forgedb_item_name[17]="Naginata";
global.forgedb_item_description[17]="Duelist's default weapon";
global.forgedb_item_type[17]="AXE";

global.forgedb_item_id[18]=18;
global.forgedb_item_sprite[18]=spr_Engineer_Wrench;
global.forgedb_item_name[18]="Engineer's Wrench";
global.forgedb_item_description[18]="Engineer's default weapon";
global.forgedb_item_type[18]="AXE";

global.forgedb_item_id[19]=19;
global.forgedb_item_sprite[19]=spr_Mechanic_Wrench;
global.forgedb_item_name[19]="Mechanic's Wrench";
global.forgedb_item_description[19]="Mechanic's default weapon";
global.forgedb_item_type[19]="AXE";

global.forgedb_item_id[20]=20;
global.forgedb_item_sprite[20]=spr_Fire_Sword;
global.forgedb_item_name[20]="Fire Sword";
global.forgedb_item_description[20]=".Increase burn chance by 35%"+
"#.Adds 10 fire damage#.+2 burn duration#.-2 burn seconds (min 1)";
global.forgedb_item_type[20]="SWORD";

global.forgedb_item_id[21]=21;
global.forgedb_item_sprite[21]=spr_Fire_Staff;
global.forgedb_item_name[21]="Fire Staff";
global.forgedb_item_description[21]=".Increase burn chance by 35%"+
"#.Adds 10 fire damage#.+2 burn duration#.-2 burn seconds (min 1)";
global.forgedb_item_type[21]="STAFF";

global.forgedb_item_id[22]=22;
global.forgedb_item_sprite[22]=spr_Fire_Dagger;
global.forgedb_item_name[22]="Fire Dagger";
global.forgedb_item_description[22]=".Increase burn chance by 35%"+
"#.Adds 10 fire damage#.+2 burn duration#.-2 burn seconds (min 1)";
global.forgedb_item_type[22]="DAGGER";

global.forgedb_item_id[23]=23;
global.forgedb_item_sprite[23]=spr_Fire_Axe;
global.forgedb_item_name[23]="Fire Axe";
global.forgedb_item_description[23]=".Increase burn chance by 35%"+
"#.Adds 10 fire damage#.+2 burn duration#.-2 burn seconds (min 1)";
global.forgedb_item_type[23]="AXE";

global.forgedb_item_id[24]=24;
global.forgedb_item_sprite[24]=spr_Fire_Scepter;
global.forgedb_item_name[24]="Fire Scepter";
global.forgedb_item_description[24]=".Increase burn chance by 35%"+
"#.Adds 10 fire damage#.+2 burn duration#.-2 burn seconds (min 1)";
global.forgedb_item_type[24]="SCEPTER";

global.forgedb_item_id[25]=25;
global.forgedb_item_sprite[25]=spr_Fire_Bow;
global.forgedb_item_name[25]="Fire Bow";
global.forgedb_item_description[25]=".Increase burn chance by 35%"+
"#.Adds 10 fire damage#.+2 burn duration#.-2 burn seconds (min 1)";
global.forgedb_item_type[25]="BOW";

global.forgedb_item_id[26]=26;
global.forgedb_item_sprite[26]=spr_Ice_Sword;
global.forgedb_item_name[26]="Ice Sword";
global.forgedb_item_description[26]=".Increase slow chance by 35%"+
"#.Adds 40% slowness#.+2 slow duration#.-1 slow seconds (min 1)";
global.forgedb_item_type[26]="SWORD";

global.forgedb_item_id[27]=27;
global.forgedb_item_sprite[27]=spr_Ice_Dagger;
global.forgedb_item_name[27]="Ice Dagger";
global.forgedb_item_description[27]=".Increase slow chance by 35%"+
"#.Adds 40% slowness#.+2 slow duration#.-1 slow seconds (min 1)";
global.forgedb_item_type[27]="KNIFE";

global.forgedb_item_id[28]=28;
global.forgedb_item_sprite[28]=spr_Ice_Staff;
global.forgedb_item_name[28]="Ice Staff";
global.forgedb_item_description[28]=".Increase slow chance by 35%"+
"#.Adds 40% slowness#.+2 slow duration#.-1 slow seconds (min 1)";
global.forgedb_item_type[28]="STAFF";

global.forgedb_item_id[29]=29;
global.forgedb_item_sprite[29]=spr_Ice_Scepter;
global.forgedb_item_name[29]="Ice Scepter";
global.forgedb_item_description[29]=".Increase slow chance by 35%"+
"#.Adds 40% slowness#.+2 slow duration#.-1 slow seconds (min 1)";
global.forgedb_item_type[29]="SCEPTER";

global.forgedb_item_id[30]=30;
global.forgedb_item_sprite[30]=spr_Ice_Bow;
global.forgedb_item_name[30]="Ice Bow";
global.forgedb_item_description[30]=".Increase slow chance by 35%"+
"#.Adds 40% slowness#.+2 slow duration#.-1 slow seconds (min 1)";
global.forgedb_item_type[30]="BOW";

global.forgedb_item_id[31]=31;
global.forgedb_item_sprite[31]=spr_Ice_Axe;
global.forgedb_item_name[31]="Ice Axe";
global.forgedb_item_description[31]=".Increase slow chance by 35%"+
"#.Adds 40% slowness#.+2 slow duration#.-1 slow seconds (min 1)";
global.forgedb_item_type[31]="AXE";

global.forgedb_item_id[32]=32;
global.forgedb_item_sprite[32]=spr_Spectral_Bow;
global.forgedb_item_name[32]="Poltergeist Bow";
global.forgedb_item_description[32]="Basic projectiles pierce up to 3 enemies";
global.forgedb_item_type[32]="BOW";

global.forgedb_item_id[33]=33;
global.forgedb_item_sprite[33]=spr_Spectral_Dagger;
global.forgedb_item_name[33]="Poltergeist Dagger";
global.forgedb_item_description[33]="Basic projectiles pierce up to 3 enemies";
global.forgedb_item_type[33]="DAGGER";

global.forgedb_item_id[34]=34;
global.forgedb_item_sprite[34]=spr_Spectral_Scepter;
global.forgedb_item_name[34]="Poltergeist Staff";
global.forgedb_item_description[34]="Basic projectiles pierce up to 3 enemies";
global.forgedb_item_type[34]="STAFF";
