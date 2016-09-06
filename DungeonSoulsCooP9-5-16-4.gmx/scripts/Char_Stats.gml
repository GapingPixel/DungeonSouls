gml_pragma("forceinline");
buff_dam = 0;
buff_def = 0;
buff_spd = 0;
buff_cd[0] = 0;
buff_cd[1] = 0;
buff_cd[2] = 0;

Stats_Set(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
life_steal = 0;
crit_chance = (global.passive[3]/5)*20;
crit_dam = 0;
laser_chance = 0;
shock_chance = 0;
meleedamage = 0;
knockback = 1;
enemy_kill_ctr = 0;
brain_buff = 0;
summon = 3
//***********//
seconds = 0;
hp_regen = (global.passive[2]/5)*2;
regen_ctr = 0;
regen_sec = 0;
//***********//

//ABILITY
ability_lvl[0] = 1;
ability_lvl[1] = 0;
ability_lvl[2] = 0;
ability_lvl[3] = 1;

//Load_Stats(); //RANK

//RANK TITLES
rank_title[0] = "NEOPHYTE";
rank_title[1] = "ESQUIRE";
rank_title[2] = "NOBLE";
rank_title[3] = "MASTER";
rank_title[4] = "CHIEF";
rank_title[5] = "TRANSCENDER";

//RANK POINTS
rank_point[0] = 10000
rank_point[1] = 20000
rank_point[2] = 50000
rank_point[3] = 100000
rank_point[4] = 250000

//MAX CHAR
maxchar = 9;

//BARB
Barbarian_Stats();
unlock_text[0] = "";
unlocked[0] = 1;
ability_frame[0] = spr_Ability_Frame;

//ARCHER
Archer_Stats();
unlock_text[1] = "";
unlocked[1] = 1;
ability_frame[1] = spr_Ability_FrameB;

//THIEF
Thief_Stats();
unlock_text[2] = "";
unlocked[2] = 1;
ability_frame[2] = spr_Ability_FrameC;

//WARRIOR
Warrior_Stats();
unlock_text[3] = "Defeat the Skeleton King";
ability_frame[3] = spr_Ability_FrameD;

//WIZARD
Wizard_Stats();
unlock_text[4] = "Find Merlin's Hat";
ability_frame[4] = spr_Ability_FrameE;

//HEALER
Cleric_Stats();
unlock_text[5] = "Defeat the Soul Guardian";
ability_frame[5] = spr_Ability_FrameF;

//NECROMANCER
Necromancer_Stats();
unlock_text[6] = "Kill 20 skeletons in one game";
ability_frame[6] = spr_Ability_FrameG;

//NIGHTBLADE
skmode = 1;
Nightblade_Stats();
unlock_text[7] = "Kill a necromancer";
ability_frame[7] = spr_Ability_FrameH;
//BRAWLER
Brawler_Stats();
unlock_text[8] = "Kill over 500 enemies";
ability_frame[8] = spr_Ability_FrameI;
//ENGINEER
Engineer_Stats();
unlock_text[9] = "Obtain a rocket";
ability_frame[9] = spr_Ability_FrameJ;

global.list = ds_list_create();
global.list_ind = ds_list_create();
global.list_name = ds_list_create();
global.list_desc = ds_list_create();
global.list_color = ds_list_create();
global.list_object = ds_list_create();
global.list_num = ds_list_create();
global.list_stacks = ds_list_create();

global.item_act = ds_list_create();
global.item_act_name = ds_list_create();
global.item_act_desc = ds_list_create();
global.item_act_object = ds_list_create();

global.potionA = ds_list_create();
global.potion_nameA = ds_list_create();
global.potion_descA = ds_list_create();
global.potion_objectA = ds_list_create();
global.potionB = ds_list_create();
global.potion_nameB = ds_list_create();
global.potion_descB = ds_list_create();
global.potion_objectB = ds_list_create();
global.potionC = ds_list_create();
global.potion_nameC = ds_list_create();
global.potion_descC = ds_list_create();
global.potion_objectC = ds_list_create();
