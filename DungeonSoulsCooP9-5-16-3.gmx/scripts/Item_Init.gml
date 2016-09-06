gml_pragma("forceinline");
item_max = 109;
var blue_col = merge_color(c_aqua,c_gray,0.7);

item_name[0]    = "HEALTH POTION"
item_desc[0]    = "heals a small amout of hp"
item_color[0]   = c_white;
item_object[0]  = obj_Potion;
item_lock[0]    = false;
item_stack[0]   = -1;
item_type[0]    = "consumable"
price_range[0]  = 20

item_name[1]    = "HAMMER"
item_desc[1]    = "+1 bonus damage#5% stun chance";
if Item_In_List(spr_Hammer) item_desc[1]    = "+"+string(1+((Item_Value(spr_Hammer)+1)))+" bonus damage#5% stun chance";
item_color[1]   = c_white;
item_object[1]  = obj_Hammer;
item_lock[1]    = false;
item_stack[1]   = 5;
item_type[1]    = "passive"
price_range[1]  = 90

item_name[2]    = "RUSTY SWORD"
item_desc[2]    = "+5 bonus damage#2% bleed chance"
if Item_In_List(spr_Rusty_Sword) item_desc[2]    = "+"+string(4+(Item_Value(spr_Rusty_Sword)+1))+" bonus damage#2% bleed chance";
item_color[2]   = c_white;
item_object[2]  = obj_Rusty_Sword;
item_lock[2]    = false;
item_stack[2]   = 4;
item_type[2]    = "passive"
price_range[2]  = 95

item_name[3]    = "ELECTRIC DAGGER"
item_desc[3]    = "+2 bonus damage#10% chance to shock enemies"
item_color[3]   = c_lime;
item_object[3]  = obj_Electric_Dagger;
item_lock[3]    = true;
item_stack[3]   = 1;
item_type[3]    = "passive"
price_range[3]  = 230

item_name[4]    = "BLOOD DAGGER"
item_desc[4]    = "+2% lifesteal#3 bonus damage"
if Item_In_List(spr_Blood_Dagger) item_desc[4] = "+"+string((Item_Value(spr_Blood_Dagger)+1)*2)+"% lifesteal#3 bonus damage";
item_color[4]   = c_lime;
item_object[4]  = obj_Blood_Dagger;
item_lock[4]    = true;
item_stack[4]   = 5;
item_type[4]    = "passive"
price_range[4]  = 310  

item_name[5]    = "WOOD SHIELD"
item_desc[5]    = "+3 bonus defense"
if Item_In_List(spr_Shield) item_desc[5] = "+"+string(3+(Item_Value(spr_Shield)+1))+" bonus defense";
item_color[5]   = c_white;
item_object[5]  = obj_Shield;
item_lock[5]    = false;
item_stack[5]   = 8;
item_type[5]    = "passive"
price_range[5]  = 145

item_name[6]    = "CLOTH"
item_desc[6]    = "+1 bonus defense"
if Item_In_List(spr_Cloth) item_desc[6] = "+"+string(1+(Item_Value(spr_Cloth)+1))+" bonus defense";
item_color[6]   = c_white;
item_object[6]  = obj_Cloth;
item_lock[6]    = false;
item_stack[6]   = 5;
item_type[6]    = "passive"
price_range[6]  = 45

item_name[7]    = "SHOE"
item_desc[7]    = "+5% movement speed"
if Item_In_List(spr_Shoe) item_desc[7] = "+"+string(5+((Item_Value(spr_Shoe)+1)*2))+"% movement speed";
item_color[7]   = c_white;
item_object[7]  = obj_Shoe;
item_lock[7]    = false;
item_stack[7]   = 5;
item_type[7]    = "passive"
price_range[7]  = 90

item_name[8]    = "COMPASS"
if (!Item_In_List(spr_Compass))
{
    item_desc[8]    = "points out direction"
}
else
{
    item_desc[8]    ="points out direction#minimap displays location of chests";
}
item_color[8]   = c_white;
item_object[8]  = obj_Compass;
item_lock[8]    = false;
item_stack[8]   = 2;
item_type[8]    = "passive"
price_range[8]  = 135;

item_name[9]    = "WIZARD'S BOOK"
item_desc[9]    = "+10% cooldown reduction"
if Item_In_List(spr_Book_of_CD) item_desc[9] = "+"+string(10+((Item_Value(spr_Book_of_CD)+1)))+"% cooldown reduction";
item_color[9]   = c_white;
item_object[9]  = obj_Book_of_CD;
item_lock[9]    = false;
item_stack[9]   = 3;
item_type[9]    = "passive"
price_range[9]  = 90;

item_name[10]    = "MAGNET"
item_desc[10]    = "attract nearby coins"
item_color[10]   = c_white;
item_object[10]  = obj_Magnet;
item_lock[10]    = false;
item_stack[10]   = 1;
item_type[10]    = "passive"
price_range[10]  = 120;

item_name[11]    = "GOLD NECKLACE"
item_desc[11]    = "+1 bonus coin"
item_color[11]   = c_lime;
item_object[11]  = obj_Gold_Necklace;
item_lock[11]    = true;
item_stack[11]   = 1;
item_type[11]    = "passive"
price_range[11]  = 180;

item_name[12]    = "BLOOD STONE"
item_desc[12]    = "30% max health"
item_color[12]   = blue_col
item_object[12]  = obj_Blood_Stone;
item_lock[12]    = true;
item_stack[12]   = 1;
item_type[12]    = "passive"
price_range[12]  = 300;

item_name[13]    = "DOT-MUNCHER'S GLOVE"
item_desc[13]    = "stronger knockback"
item_color[13]   = c_white;
item_object[13]  = obj_Pacman_Glove;
item_lock[13]    = false;
item_stack[13]   = 1;
item_type[13]    = "passive"
price_range[13]  = 145;

item_name[14]    = "MADU BUCKLER"
item_desc[14]    = "+10% chance to parry attacks"
if (Item_In_List(spr_Madu_Buckler) and ((Item_Value(spr_Madu_Buckler)+1)*5)+10 < 50)
{ item_desc[14] = "+"+string(((Item_Value(spr_Madu_Buckler)+1)*5)+10)+"% chance to parry attacks";}
item_color[14]   = c_white;
item_object[14]  = obj_Madu_Buckler;
item_lock[14]    = false;
item_stack[14]   = 3;
item_type[14]    = "passive"
price_range[14]  = 120;

item_name[15]    = "SPIKE BALL"
item_desc[15]    = "spawns orbiting spikeball #that deals +2 damage"
if Item_In_List(spr_Spike_Ball) item_desc[15]    = "spawns orbiting spikeball #that deals +"+string(2+((Item_Value(spr_Spike_Ball)+1)*2))+" damage";
item_color[15]   = c_white;
item_object[15]  = obj_Spike_Ball;
item_lock[15]    = false;
item_stack[15]   = 10;
item_type[15]     = "passive"
price_range[15]  = 100;

item_name[16]    = "DEATH'S BOW AND ARROW"
item_desc[16]    = "30% critical chance#3 bonus accuracy"
item_color[16]   = c_lime;
item_object[16]  = obj_Death_Bow;
item_lock[16]    = false;
item_stack[16]   = 1;
item_type[16]    = "passive"
price_range[16]  = 280;

item_name[17]    = "LASER STAFF"
item_desc[17]    = "20% chance to cast laser beam#5 magic damage"
item_color[17]   = c_lime;
item_object[17]  = obj_Laser_Staff;
item_lock[17]    = true;
item_stack[17]   = 1;
item_type[17]    = "passive"
price_range[17]  = 240;

item_name[18]    = "FOUR LEAF CLOVER"
item_desc[18]    = "4% chance to spawn items each kill"
item_color[18]   = c_lime;
item_object[18]  = obj_Four_Leaf_Clover;
item_lock[18]    = true;
item_stack[18]   = 1;
item_type[18]    = "passive"
price_range[18]  = 200;

item_name[19]    = "UNICORN HORN"
item_desc[19]    = "2% chance to hit 999 damage"
item_color[19]   = c_lime;
item_object[19]  = obj_Unicorn_Horn;
item_lock[19]    = true;
item_stack[19]   = 1;
item_type[19]    = "passive"
price_range[19]  = 260;

item_name[20]    = "THORNMAIL"
item_desc[20]    = "deals +2 damage to nearby enemies"
if Item_In_List(spr_Thornmail) item_desc[20]  = "deals +"+string(2+(Item_Value(spr_Thornmail)+1)*2)+" damage to nearby enemies";
item_color[20]   = c_white;
item_object[20]  = obj_Thornmail;
item_lock[20]    = false;
item_stack[20]   = 10;
item_type[20]    = "passive"
price_range[20]  = 80;

item_name[21]    = "TWIN BLADE"
item_desc[21]    = "+30% chance to double damage";
if Item_In_List(spr_Twin_Blade) and 30+((Item_Value(spr_Twin_Blade)+1)*2) < 45 item_desc[21]    = "+"+string(30+((Item_Value(spr_Twin_Blade)+1)*2))+"% chance to double damage";
item_color[21]   = c_white;
item_object[21]  = obj_Twin_Blade;
item_lock[21]    = false;
item_stack[21]   = 2;
item_type[21]    = "passive"
price_range[21]  = 115;

item_name[22]    = "CAT'S PAW"
item_desc[22]    = "50% chance to gain +10% exp per critical hit";
if Item_In_List(spr_Cat_Paw) item_desc[22]    = "50% chance to gain +"+string((Item_Value(spr_Cat_Paw)+1)*10)+"% exp per critical hit";
item_color[22]   = c_white;
item_object[22]  = obj_Cat_Paw;
item_lock[22]    = false;
item_stack[22]   = 5;
item_type[22]    = "passive"
price_range[22]  = 90;

item_name[23]    = "DETONATOR"
item_desc[23]    = "+30% chance to detonate enemies on death";
if Item_In_List(spr_Detonator) item_desc[23]    = "+"+string(30+((Item_Value(spr_Detonator)+1)*5))+"% chance to detonate enemies on death";
item_color[23]   = c_white;
item_object[23]  = obj_Detonator;
item_lock[23]    = false;
item_stack[23]   = 4;
item_type[23]    = "passive"
price_range[23]  = 135;

item_name[24]    = "BROAD SWORD"
item_desc[24]    = "10 bonus damage#slower attack speed"
item_color[24]   = c_lime;
item_object[24]  = obj_Broad_Sword;
item_lock[24]    = true;
item_stack[24]   = 1;
item_type[24]    = "passive"
price_range[24]  = 265;

item_name[25]    = "GOLDEN HAND"
item_desc[25]    = "steal enemies' gold each attack"
item_color[25]   = c_lime;
item_object[25]  = obj_Gold_Hand;
item_lock[25]    = true;
item_stack[25]   = 1;
item_type[25]    = "passive"
price_range[25]  = 215;

item_name[26]    = "ASSASSIN'S BLADE"
item_desc[26]    = "ACTIVE: reset abilities cooldown"
item_color[26]   = DS_ORANGE;
item_object[26]  = obj_Assassin_Blade;
item_lock[26]    = false;
item_stack[26]   = 1;
item_type[26]    = "active"
price_range[26]  = 165;

item_name[27]    = "CLUB"
item_desc[27]    = "+1 bonus damage"
if Item_In_List(spr_Club) item_desc[27]    = "+"+string(1+((Item_Value(spr_Club)+1)*1))+" bonus damage";
item_color[27]   = c_white;
item_object[27]  = obj_Club;
item_lock[27]    = false;
item_stack[27]   = 10;
item_type[27]    = "passive"
price_range[27]  = 45

item_name[28]    = "MEDICAL HERB"
item_desc[28]    = "+3 hp every 5 seconds"
if Item_In_List(spr_Herb) item_desc[28]    = "+"+string(3+((Item_Value(spr_Herb)+1)*2))+" hp every 5 seconds";
item_color[28]   = c_white;
item_object[28]  = obj_Herb;
item_lock[28]    = false;
item_stack[28]   = 5;
item_type[28]    = "passive"
price_range[28]  = 135;

item_name[29]    = "BLEEDING EYEBALL"
item_desc[29]    = "spawns orbiting eyeball#that shoots blood and deals #+2 damage"
if Item_In_List(spr_Eyeball) item_desc[29]    = "spawns orbiting eyeball#that shoots blood and deals #+"+string(2+((Item_Value(spr_Eyeball)+1)*2))+" damage";
item_color[29]   = c_white;
item_object[29]  = obj_Eyeball;
item_lock[29]    = false;
item_stack[29]   =6;
item_type[29]    = "passive"
price_range[29]  = 100;

item_name[30]    = "MAGNIFYING GLASS"
item_desc[30]    = "10% accuracy#10% burn chance"
item_color[30]   = c_lime;
item_object[30]  = obj_Magnifying_Glass;
item_lock[30]    = true;
item_stack[30]   = 1;
item_type[30]    = "passive"
price_range[30]  = 215;

item_name[31]    = "PICKAXE"
item_desc[31]    = "12 bonus damage#10% critical chance"
item_color[31]   = c_lime;
item_object[31]  = obj_Pickaxe;
item_lock[31]    = true;
item_stack[31]   = 1;
item_type[31]    = "passive"
price_range[31]  = 230;

item_name[32]    = "BEAKER"
item_desc[32]    = "killing 5 enemy heals you by 10 hp";
if Item_In_List(spr_Beaker) item_desc[32] ="killing "+string(5+((Item_Value(spr_Beaker))))+" enemy heals you by "+string(10+((Item_Value(spr_Beaker))*5))+" hp"
item_color[32]   = c_white;
item_object[32]  = obj_Beaker;
item_lock[32]    = false;
item_stack[32]   = 8;
item_type[32]    = "passive"
price_range[32]  = 195;

item_name[33]    = "BEATING BRAIN"
item_desc[33]    = "falling to low health#makes your attack faster"
item_color[33]   = c_white;
item_object[33]  = obj_Beating_Brain;
item_lock[33]    = false;
item_stack[33]   = 1;
item_type[33]    = "passive"
price_range[33]  = 180;

item_name[34]    = "SOUL JAR"
item_desc[34]    = "50% chance to obtain enemies soul#which heals you by 5 hp"
item_color[34]   = c_lime;
item_object[34]  = obj_Soul_Jar;
item_lock[34]    = false;
item_stack[34]   = 1;
item_type[34]    = "passive"
price_range[34]  = 145;

item_name[35]    = "CANNON BALL"
item_desc[35]    = "50% chance for attack to explode#that deals +125% damage"
if Item_In_List(spr_Cannon_Ball) item_desc[35]    = "50% chance for attack to explode#that deals +125% (+"+string(125+((Item_Value(spr_Cannon_Ball)+1)*5))+"%) damage";
item_color[35]   = c_white;
item_object[35]  = obj_Cannon_Ball;
item_lock[35]    = false;
item_stack[35]   = 5;
item_type[35]    = "passive"
price_range[35]  = 130;

item_name[36]    = "BEAR CLAW"
item_desc[36]    = "50% chance to scratch enemy on hit#that deals +50% magic damage"
if Item_In_List(spr_Bear_Claw) item_desc[36]    = "50% chance to scratch enemy on hit#that deals +"+string(50+((Item_Value(spr_Bear_Claw)+1)*5))+"% magic damage";
item_color[36]   = c_white;
item_object[36]  = obj_Bear_Claw;
item_lock[36]    = false;
item_stack[36]   = 10;
item_type[36]    = "passive"
price_range[36]  = 100;

item_name[37]    = "WARRIOR'S BOOK"
item_desc[37]    = "+5 bonus defense"
if Item_In_List(spr_Book_of_WR) item_desc[37]    = "+"+string(5+((Item_Value(spr_Book_of_WR)+1)*2))+" bonus defense";
item_color[37]   = c_white;
item_object[37]  = obj_Book_of_WR;
item_lock[37]    = false;
item_stack[37]   = 5;
item_type[37]    = "passive"
price_range[37]  = 50;

item_name[38]    = "BARBARIAN'S BOOK"
item_desc[38]    = "+5 bonus damage"
if Item_In_List(spr_Book_of_BR) item_desc[38]    = "+"+string(5+((Item_Value(spr_Book_of_BR)+1)*2))+" bonus damage";
item_color[38]   = c_white;
item_object[38]  = obj_Book_of_BR;
item_lock[38]    = false;
item_stack[38]   = 5;
item_type[38]    = "passive"
price_range[38]  = 50;

item_name[39]    = "ARCHER'S BOOK"
item_desc[39]    = "+2% accuracy"
if Item_In_List(spr_Book_of_AR) item_desc[39]    = "+"+string(2+((Item_Value(spr_Book_of_AR)+1)))+"% accuracy";
item_color[39]   = c_white;
item_object[39]  = obj_Book_of_AR;
item_lock[39]    = false;
item_stack[39]   = 5;
item_type[39]    = "passive"
price_range[39]  = 50;

item_name[40]    = "HEALER'S BOOK"
item_desc[40]    = "+5 max health"
if Item_In_List(spr_Book_of_HL) item_desc[40]    = "+"+string(5+((Item_Value(spr_Book_of_HL)+2)))+" max health";
item_color[40]   = c_white;
item_object[40]  = obj_Book_of_HL;
item_lock[40]    = false;
item_stack[40]   = 5;
item_type[40]    = "passive"
price_range[40]  = 50;

item_name[41]    = "THIEF'S BOOK"
item_desc[41]    = "+0.10 movement speed"
if Item_In_List(spr_Book_of_TH) item_desc[41]    = "+"+string((0.10+((Item_Value(spr_Book_of_TH)+1)*0.05)))+" movement speed";
item_color[41]   = c_white;
item_object[41]  = obj_Book_of_TH;
item_lock[41]    = false;
item_stack[41]   = 5;
item_type[41]    = "passive"
price_range[41]  = 50;

item_name[42]    = "SWORD OF REGEN"
item_desc[42]    = "10 bonus damage#5 health per 10 seconds"
item_color[42]   = c_lime;
item_object[42]  = obj_Sword_of_Regen;
item_lock[42]    = true;
item_stack[42]   = 1;
item_type[42]    = "passive"
price_range[42]  = 300;

item_name[43]    = "SWORD OF ENERGY"
item_desc[43]    = "15% critical chance#10% to shock enemies"
item_color[43]   = c_lime;
item_object[43]  = obj_Sword_of_Energy;
item_lock[43]    = true;
item_stack[43]   = 1;
item_type[43]    = "passive"
price_range[43]  = 300;

item_name[44]    = "SWORD OF ICE"
item_desc[44]    = "10% to slow enemies on hit#10% movement speed"
item_color[44]   = c_lime;
item_object[44]  = obj_Sword_of_Ice;
item_lock[44]    = true;
item_stack[44]   = 1;
item_type[44]    = "passive"
price_range[44]  = 300;

item_name[45]    = "BLOOD SWORD"
item_desc[45]    = "12 bonus damage#5% lifesteal"
item_color[45]   = c_lime;
item_object[45]  = obj_Blood_Sword;
item_lock[45]    = true;
item_stack[45]   = 1;
item_type[45]    = "passive"
price_range[45]  = 300;

item_name[46]    = "POTION OF RETRIEVE"
item_desc[46]    = "50% chance to regain health"
item_color[46]   = c_white;
item_object[46]  = obj_Potion_of_Retrieve
item_lock[46]    = false;
item_stack[46]   = -1;
item_type[46]    = "consumable"
price_range[46]  = 20

item_name[47]    = "BEER"
item_desc[47]    = "50% chance to slow enemies on hit for 1 second"
if Item_In_List(spr_Beer) item_desc[47] = "50% chance to slow enemies on hit for 1 ("+string((100+((Item_Value(spr_Beer)+1)*30))/100)+") second";
item_color[47]   = c_white;
item_object[47]  = obj_Beer;
item_lock[47]    = false;
item_stack[47]   = 10;
item_type[47]    = "passive"
price_range[47]  = 240

item_name[48]    = "SLING SHOT"
item_desc[48]    = "scatter shot on enemy death#that deals +175% damage"
if Item_In_List(spr_Slingshot) item_desc[48] = "scatter shot on enemy death#that deals +175% ("+string((175+((Item_Value(spr_Slingshot)+1)*30))/100)+") damage";
item_color[48]   = c_lime;
item_object[48]  = obj_Slingshot;
item_lock[48]    = true;
item_stack[48]   = 10;
item_type[48]    = "passive"
price_range[48]  = 250

item_name[49]    = "ROCKET"
item_desc[49]    = "ACTIVE: launch 3 rockets#that deals +250% attack damage";
//if Item_In_List(spr_Rocket) item_desc[49] = "ACTIVE: launch 3 rockets#that deals +250% (+"+string((250+((Item_Value(spr_Rocket)+1)*50))/100)+"%) damage";
item_color[49]   = DS_ORANGE;
item_object[49]  = obj_Rocket;
item_lock[49]    = true;
item_stack[49]   = 1;
item_type[49]    = "active"
price_range[49]  = 300

item_name[50]    = "MERLIN'S HAT"
item_desc[50]    = "greater cooldown reduction#10 magic resistance"
item_color[50]   = c_lime;
item_object[50]  = obj_Merlin_Hat;
item_lock[50]    = true;
item_stack[50]   = 1;
item_type[50]    = "passive"
price_range[50]  = 300

item_name[51]    = "ZOMBIE TOOTH"
item_desc[51]    = "5 hp every 3 seconds#when standing on blood"
if Item_In_List(spr_Zombie_Tooth) item_desc[51] = ""+string((5+((Item_Value(spr_Zombie_Tooth)+1)*2)))+" hp every 3 seconds#when standing on blood";
item_color[51]   = c_white;
item_object[51]  = obj_Zombie_Tooth;
item_lock[51]    = true;
item_stack[51]   = 5;
item_type[51]    = "passive"
price_range[51]  = 260

item_name[52]    = "MAGMA WORM'S TAIL"
item_desc[52]    = "creates fire each step"
item_color[52]   = c_lime;
item_object[52]  = obj_Magma_Worm_Tail;
item_lock[52]    = true;
item_stack[52]   = 1;
item_type[52]    = "passive"
price_range[52]  = 280

item_name[53]    = "MOLOTOV"
item_desc[53]    = "50% chance for attack to create fire"
item_color[53]   = c_white;
item_object[53]  = obj_Molotov;
item_lock[53]    = true;
item_stack[53]   = 1;
item_type[53]    = "passive"
price_range[53]  = 300

item_name[54]    = "SILVER KEY"
item_desc[54]    = "useful in opening silver chests"
item_color[54]   = c_white;
item_object[54]  = obj_Silver_Key;
item_lock[54]    = false;
item_stack[54]   = -1
item_type[54]    = "passive"
price_range[54]  = 100

item_name[55]    = "GOLDEN KEY"
item_desc[55]    = "opens golden chests"
item_color[55]   = c_white;
item_object[55]  = obj_Golden_Key;
item_lock[55]    = false;
item_stack[55]   = -1;
item_type[55]    = "passive"
price_range[55]  = 150

item_name[56]    = "VANGUARD"
item_desc[56]    = "spawns 3 rotating shield"
item_color[56]   = c_lime;
item_object[56]  = obj_Vanguard;
item_lock[56]    = true;
item_stack[56]   = 1;
item_type[56]    = "passive"
price_range[56]  = 320

item_name[57]    = "FOOTFINGER"
item_desc[57]    = "walk faster on crit for 5 seconds"
item_color[57]   = c_white;
item_object[57]  = obj_Footfinger;
item_lock[57]    = true;
item_stack[57]   = 1;
item_type[57]    = "passive"
price_range[57]  = 280

item_name[58]    = "BERSERKER'S RING"
item_desc[58]    = "ACTIVE: turn berserker mode for 5 seconds"
item_color[58]   = DS_ORANGE;
item_object[58]  = obj_Berserker_Ring;
item_lock[58]    = true;
item_stack[58]   = 1;
item_type[58]    = "active"
price_range[58]  = 260

item_name[59]    = "POISON MUSHROOM"
item_desc[59]    = "ACTIVE: plant poisonous shroom"
item_color[59]   = DS_ORANGE;
item_object[59]  = obj_Poison_Mushroom;
item_lock[59]    = true;
item_stack[59]   = 1;
item_type[59]    = "active"
price_range[59]  = 250

item_name[60]    = "BUTTERFLY WING"
item_desc[60]    = "ACTIVE: cast 4 whirlwinds that deal#5+(20% of user's physical damage)+#(100% of user's magic damage) mixed damage"
item_color[60]   = DS_ORANGE;
item_object[60]  = obj_Butterfly_Wing;
item_lock[60]    = true;
item_stack[60]   = 1;
item_type[60]    = "active"
price_range[60]  = 300

item_name[61]    = "SOUL ORB"
item_desc[61]    = "a sacred orb"
item_color[61]   = c_yellow;
item_object[61]  = obj_Soul_Orb_Main;
item_lock[61]    = false;
item_stack[61]   = -1;
item_type[61]    = "passive"
price_range[61]  = 300

item_name[62]    = "POTION OF RAGE"
item_desc[62]    = "Deals double damage for 10 sec"
item_color[62]   = c_white;
item_object[62]  = obj_Potion_of_Rage;
item_lock[62]    = false;
item_stack[62]   = -1;
item_type[62]    = "consumable"
price_range[62]  = 20

item_name[63]    = "KING'S CROWN"
item_desc[63]    = "20% maxhp#15 bonus damage#10 bonus defense"
item_color[63]   = blue_col
item_object[63]  = obj_King_Crown;
item_lock[63]    = true;
item_stack[63]   = 1;
item_type[63]    = "passive"
price_range[63]  = 320

item_name[64]    = "PRICE TAG"
item_desc[64]    = "10% off to all items"
item_color[64]   = c_lime;
item_object[64]  = obj_Price_Tag;
item_lock[64]    = true;
item_stack[64]   = 1;
item_type[64]    = "passive"
price_range[64]  = 280;

item_name[65]    = "TREASURE BOX"
item_desc[65]    = "higher chance for normal chests #to drop uncommon items"
item_color[65]   = blue_col
item_object[65]  = obj_Treasure_Box;
item_lock[65]    = true;
item_stack[65]   = 1;
item_type[65]    = "passive"
price_range[65]  = 350;

item_name[66]    = "DEAD SKULL"
item_desc[66]    = "deals +10% damage times the number of# corpses in the room"
item_color[66]   = blue_col
item_object[66]  = obj_Skull;
item_lock[66]    = true;
item_stack[66]   = 1
item_type[66]    = "passive"
price_range[66]  = 250;

item_name[67]    = "VENOM"
item_desc[67]    = "poison enemies on collision"
item_color[67]   = blue_col
item_object[67]  = obj_Venom;
item_lock[67]    = true;
item_stack[67]   = 1;
item_type[67]    = "passive"
price_range[67]  = 270;

item_name[68]    = "BLOODY RABBIT'S FOOT"
item_desc[68]    = "walk faster on blood"
item_color[68]   = c_lime;
item_object[68]  = obj_Blood_Foot;
item_lock[68]    = false;
item_stack[68]   = 1;
item_type[68]    = "passive"
price_range[68]  = 240;

item_name[69]    = "BATTERY"
item_desc[69]    = "electricity on your body"
item_color[69]   = blue_col
item_object[69]  = obj_Battery;
item_lock[69]    = true;
item_stack[69]   = 1;
item_type[69]    = "passive"
price_range[69]  = 300;

item_name[70]    = "CRUCIFIX"
item_desc[70]    = "-10% enemy health"
item_color[70]   = blue_col
item_object[70]  = obj_Crucifix;
item_lock[70]    = true;
item_stack[70]   = 1;
item_type[70]    = "passive"
price_range[70]  = 360;

item_name[71]    = "POTION OF PENETRATION"
item_desc[71]    = "increase critical chance by 50% for 15 seconds"
item_color[71]   = c_white;
item_object[71]  = obj_Potion_of_Penetration;
item_lock[71]    = false;
item_stack[71]   = -1;
item_type[71]    = "consumable"
price_range[71]  = 20

item_name[72]    = "TURTLE SHELL"
item_desc[72]    = "attacks deflect enemy projectiles"
item_color[72]   = blue_col
item_object[72]  = obj_Turtle_Shell;
item_lock[72]    = true;
item_stack[72]   = 1
item_type[72]    = "passive"
price_range[72]  = 400;

item_name[73]    = "FALLEN SOLDIER SHIELD"
item_desc[73]    = "+15 bonus defense#10% stun chance"
item_color[73]   = c_lime;
item_object[73]  = obj_Iron_Shield;
item_lock[73]    = false;
item_stack[73]   = 1;
item_type[73]    = "passive"
price_range[73]  = 350  

item_name[74]    = "POTION OF RISK"
item_desc[74]    = "50% chance to increase damage by 2#50% chance to decrease damage by 1"
item_color[74]   = c_white;
item_object[74]  = obj_Potion_of_Risk;
item_lock[74]    = false;
item_stack[74]   = -1;
item_type[74]    = "consumable"
price_range[74]  = 20

item_name[75]    = "BROKEN KATANA"
item_desc[75]    = "+30% critical hit damage"
if Item_In_List(spr_Broken_Katana) item_desc[75] = ""+string((30+((Item_Value(spr_Broken_Katana)+1)*5)))+"% critical hit damage";
item_color[75]   = c_white;
item_object[75]  = obj_Broken_Katana;
item_lock[75]    = false;
item_stack[75]   = 5;
item_type[75]    = "passive"
price_range[75]  = 280;

item_name[76]    = "SPIKE KEY"
item_desc[76]    = "+2 silver and golden keys"
item_color[76]   = c_lime;
item_object[76]  = obj_Spike_Key;
item_lock[76]    = false;
item_stack[76]   = -1;
item_type[76]    = "passive"
price_range[76]  = 320;

item_name[77]    = "EMPTY BOTTLE"
item_desc[77]    = "spawns 4 potions around you#on boss room"
item_color[77]   = blue_col
item_object[77]  = obj_Empty_Bottle;
item_lock[77]    = false;
item_stack[77]   = 1;
item_type[77]    = "passive"
price_range[77]  = 290;

item_name[78]    = "COIN PURSE"
item_desc[78]    = "+999 coins"
item_color[78]   = c_lime;
item_object[78]  = obj_Coin_Purse;
item_lock[78]    = false;
item_stack[78]   = 1;
item_type[78]    = "passive"
price_range[78]  = 310;

item_name[79]    = "FISH MEAT"
item_desc[79]    = "10 max hp#1 bonus defense"
item_color[79]   = c_lime;
item_object[79]  = obj_Fish_Meat;
item_lock[79]    = false;
item_stack[79]   = 1;
item_type[79]    = "passive"
price_range[79]  = 350;

item_name[80]    = "LOCKPICK"
item_desc[80]    = "ACTIVE: 25% chance to unlock #all chests in the room"
item_color[80]   = DS_ORANGE;
item_object[80]  = obj_Lockpick;
item_lock[80]    = false;
item_stack[80]   = 1;
item_type[80]    = "active"
price_range[80]  = 360;

item_name[81]    = "COOKING KNIFE"
item_desc[81]    = "10% bleed chance# 2 crit chance"
item_color[81]   = c_lime;
item_object[81]  = obj_Cooking_Knife;
item_lock[81]    = false;
item_stack[81]   = 1;
item_type[81]    = "passive"
price_range[81]  = 310;

item_name[82]    = "DEVIL HOOF"
item_desc[82]    = "+10% stun chance#enemies walk faster"
item_color[82]   = c_lime;
item_object[82]  = obj_Devil_Hoof;
item_lock[82]    = false;
item_stack[82]   = 1;
item_type[82]    = "passive"
price_range[82]  = 350;

item_name[83]    = "GREEN MEAT CUBE"
item_desc[83]    = "-10% maxhp#5 defense"
item_color[83]   = c_lime;
item_object[83]  = obj_Green_Meat_Cube;
item_lock[83]    = false;
item_stack[83]   = 1;
item_type[83]    = "passive"
price_range[83]  = 270;

item_name[84]    = "GUARDIAN ARMOR"
item_desc[84]    = "10 defense#10 magic resistance#5 max health"
item_color[84]   = blue_col
item_object[84]  = obj_Guardian_Armor;
item_lock[84]    = false;
item_stack[84]   = 1;
item_type[84]    = "passive"
price_range[84]  = 380;

item_name[85]    = "RED SCARF"
item_desc[85]    = "50% chance to resist slow effect"
item_color[85]   = c_lime;
item_object[85]  = obj_Red_Scarf;
item_lock[85]    = false;
item_stack[85]   = 1;
item_type[85]    = "passive"
price_range[85]  = 280;

item_name[86]    = "FRESH GARLIC"
item_desc[86]    = "+5 magic resistance"
if Item_In_List(spr_Fresh_Garlic) item_desc[86] = ""+string(5+((Item_Value(spr_Fresh_Garlic)+1)))+" magic resistance";
item_color[86]   = c_white;
item_object[86]  = obj_Fresh_Garlic;
item_lock[86]    = false;
item_stack[86]   = 5;
item_type[86]    = "passive"
price_range[86]  = 250;

item_name[87]    = "MAGIC STICK"
item_desc[87]    = "+5 magic damage"
if Item_In_List(spr_Magic_Stick) item_desc[87] = ""+string(5+((Item_Value(spr_Magic_Stick)+1)))+" magic damage";
item_color[87]   = c_white;
item_object[87]  = obj_Magic_Stick;
item_lock[87]    = false;
item_stack[87]   = 5;
item_type[87]    = "passive"
price_range[87]  = 100;

item_name[88]    = "GOAT'S HORN"
item_desc[88]    = "destroy the freakin' boulders!!!"
item_color[88]   = c_lime;
item_object[88]  = obj_Goat_Horn;
item_lock[88]    = false;
item_stack[88]   = -1;
item_type[88]    = "passive"
price_range[88]  = 350;

item_name[89]    = "COMMON SCEPTER"
item_desc[89]    = "ACTIVE: shoot laser beams that deals#10(+10%) magic damage"
item_color[89]   = DS_ORANGE;
item_object[89]  = obj_Common_Scepter;
item_lock[89]    = false;
item_stack[89]   = 1;
item_type[89]    = "active"
price_range[89]  = 210;

item_name[90]    = "BLOOD SCEPTER"
item_desc[90]    = "ACTIVE: steal 5% hp of #all enemies in the room "
item_color[90]   = DS_ORANGE;
item_object[90]  = obj_Blood_Scepter;
item_lock[90]    = false;
item_stack[90]   = 1;
item_type[90]    = "active"
price_range[90]  = 280;

item_name[91]    = "BANE SCEPTER"
item_desc[91]    = "ACTIVE: get 3 stat points#and 2 skill points#for 25% max hp"
item_color[91]   = DS_ORANGE;
item_object[91]  = obj_Bane_Scepter;
item_lock[91]    = false;
item_stack[91]   = 1;
item_type[91]    = "active"
price_range[91]  = 310;

item_name[92]    = "FORGOTTEN STAFF"
item_desc[92]    = "+8 magic damage#2 attack damage"
if Item_In_List(spr_Forgotten_Staff) item_desc[92] = ""+string(8+((Item_Value(spr_Forgotten_Staff)+1)))+" magic damage#2 attack damage";
item_color[92]   = c_white;
item_object[92]  = obj_Forgotten_Staff;
item_lock[92]    = false;
item_stack[92]   = 5;
item_type[92]    = "passive"
price_range[92]  = 300;

item_name[93]    = "MAGICAL SCROLL"
item_desc[93]    = "+2 magic damage"
if Item_In_List(spr_Magical_Scroll) item_desc[93] = ""+string(2+((Item_Value(spr_Magical_Scroll)+1)))+" magic damage";
item_color[93]   = c_white;
item_object[93]  = obj_Magical_Scroll;
item_lock[93]    = false;
item_stack[93]   = 5;
item_type[93]    = "passive"
price_range[93]  = 80;

item_name[94]    = "TRAVELER'S CLOAK"
item_desc[94]    = "+5 magic resistance#1% movement speed"
if Item_In_List(spr_Forgotten_Staff) item_desc[94] = ""+string(5+((Item_Value(spr_Forgotten_Staff)+1)))+" magic resistance#1% movement speed";
item_color[94]   = c_white;
item_object[94]  = obj_Traveler_Cloak;
item_lock[94]    = false;
item_stack[94]   = 5;
item_type[94]    = "passive"
price_range[94]  = 280;

item_name[95]    = "SCEPTER OF POWER"
item_desc[95]    = "Insane damage boost, lowered HP#200% mixed DMG#-50% HP"
item_color[95]   = c_purple;
item_object[95]  = obj_Scepter_of_Power;
item_lock[95]    = false;
item_stack[95]   = 1;
item_type[95]    = "passive"
price_range[95]  = 300;

item_name[96]    = "AMPLIFYING TOME"
item_desc[96]    = "+200% DMG on spells#+100% cooldown on damage-dealing spells"
item_color[96]   = c_purple;
item_object[96]  = obj_Amplifying_Tome;
item_lock[96]    = false;
item_stack[96]   = 1;
item_type[96]    = "passive"
price_range[96]  = 300;

item_name[97]    = "ANGEL FEATHER"
item_desc[97]    = "Revives you on death#with 30% hp#-Item gets consumed";
if (Item_In_List(spr_Angel_Feather))
{
    item_desc[97]    = "Revives you on death#with "+string(30+10*Item_Value(spr_Angel_Feather))+"% hp#-Item gets consumed";
}
item_color[97]   = blue_col
item_object[97]  = obj_Angel_Feather;
item_lock[97]    = false;
item_stack[97]   = 8;
item_type[97]    = "passive"
price_range[97]  = 500;

item_name[98]    = "VITAL ARMOR"
item_desc[98]    = "When hit:#50% chance to heal damage#50% chance to double damage"
item_color[98]   = c_purple;
item_object[98]  = obj_Vital_Armor;
item_lock[98]    = false;
item_stack[98]   = 1;
item_type[98]    = "passive"
price_range[98]  = 300;

item_name[99]    = "THE NORTHERN HAT, EH!"
item_desc[99]    = "Reduces freezing effect by 20%#Increase defense by 3";
if (Item_In_List(spr_Northern_Hat))
{
    item_desc[99]    = "Reduces freezing effect by "+string(20+Item_Value(spr_Northern_Hat)*10)+"%#Increase defense by "+string(3+Item_Value(spr_Northern_Hat)*4);
}
item_color[99]   = blue_col
item_object[99]  = obj_Northern_Hat;
item_lock[99]    = false;
item_stack[99]   = 4;
item_type[99]    = "passive"
price_range[99]  = 450;

item_name[100]    = "SHOES OF HASTE"
item_desc[100]    = "Double your speed, but Redeemer spawns#immediatly after portal activation"
item_color[100]   = c_purple;
item_object[100]  = obj_Shoes_of_Haste;
item_lock[100]    = false;
item_stack[100]   = 1;
item_type[100]    = "passive"
price_range[100]  = 300;

item_name[101]    = "REDEEMER'S ESSENCE"
item_desc[101]    = "Takes twice the time for Redeemer to appear"
item_color[101]   = c_lime;
item_object[101]  = obj_Redeemers_Essence;
item_lock[101]    = false;
item_stack[101]   = 1;
item_type[101]    = "passive"
price_range[101]  = 120;

//RECIPE INDEX
item_name[102]    = "N/A"
item_desc[102]    = "DECLARED ON ITEM"
item_color[102]   = c_red;
item_object[102]  = obj_Fire_Sword_Recipe;
item_lock[102]    = false;
item_stack[102]   = 1;
item_type[102]    = "passive"
price_range[102]  = 240;

item_name[103]    = "RECOMMENDATION LETTER"
if (Item_In_List(spr_Recommendation_Letter))
{
    item_desc[103]    = "Enables 3 purchases from the shop";
}
else
{
    item_desc[103]    = "Enables 2 purchases from the shop";
}
item_color[103]   = c_lime;
item_object[103]  = obj_Recommendation_Letter;
item_lock[103]    = false;
item_stack[103]   = 2;
item_type[103]    = "passive"
price_range[103]  = 120;

item_name[104]    = "BLIZZARD CAPE"
if (Item_In_List(spr_Blizzard_Cape))
{
    item_desc[104]    = "Deals 15 damage per second to nearby enemies#Slow enemies in the area by 40%#Double self freezing duration";
}
else
{
    item_desc[104]    = "Deals 15 damage per second to nearby enemies#Double self freezing duration";
}
item_color[104]   = c_purple;
item_object[104]  = obj_Blizzard_Cape;
item_lock[104]    = false;
item_stack[104]   = 2;
item_type[104]    = "passive"
price_range[104]  = 300;

item_name[105]    = "NINBY'S GRACE"
if (Item_In_List(spr_Ninby_Grace))
{
    if (Item_Value(spr_Ninby_Grace)!=3)
    {
        item_desc[105]    = string(30+10*(Item_Value(spr_Ninby_Grace)))+"% chance to completely heal incoming enemy damage";
    }
    else
    {
        item_desc[105]    = "50% chance to completely heal incoming enemy damage";
    }
}
else
{
    item_desc[105]    = "30% chance to completely heal incoming enemy damage";
}
item_color[105]   = c_aqua;
item_object[105]  = obj_Ninby_Grace;
item_lock[105]    = false;
item_stack[105]   = 3;
item_type[105]    = "passive"
price_range[105]  = 240;

item_name[106]    = "BLIND BLADE"
item_desc[106]    = "On strike effect:#50% chance to deal double damage#50%chance to deal no damage";
item_color[106]   = c_purple;
item_object[106]  = obj_Blind_Blade;
item_lock[106]    = false;
item_stack[106]   = 1;
item_type[106]    = "passive"
price_range[106]  = 300;

item_name[107]    = "SPIKED SHOES"
item_desc[107]    = "Resists the knockback from your attacks#+5% movement speed";
item_color[107]   = c_lime;
item_object[107]  = obj_Spiked_Shoes;
item_lock[107]    = false;
item_stack[107]   = 1;
item_type[107]    = "passive"
price_range[107]  = 150;

item_name[108]    = "DRAGON'S TAIL"
if (Item_In_List(spr_Dragon_Tail))
{
    if (Item_Value(spr_Dragon_Tail)==3)
    {
        item_desc[108]    = "The spirit of the dragon adds a 45% chance#to shoot a fireball for 250% magic damage on attacking";
    }
    else
    {
        item_desc[108]    = "The spirit of the dragon adds a "+string(15+15*Item_Value(spr_Dragon_Tail))+"% chance#to shoot a fireball for "
        +string(150+50*Item_Value(spr_Dragon_Tail))+"% magic damage on attacking";
    }
}
else
{
    item_desc[108]    = "The spirit of the dragon adds a 15% chance#to shoot a fireball for 150% magic damage on attacking";
}
item_color[108]   = c_lime;
item_object[108]  = obj_Dragon_Tail;
item_lock[108]    = false;
item_stack[108]   = 3;
item_type[108]    = "passive"
price_range[108]  = 200;


item_name[109]    = "POTION POUCH"
if (Item_In_List(spr_Potion_Pouch))
{
    if (Item_Value(spr_Potion_Pouch)==2)
    {
        item_desc[109]    = "Allows you to carry 2 more potions on each slot.";
    }
    else
    {
        item_desc[109]    = "Allows you to carry "+string(Item_Value(spr_Potion_Pouch)+1)+" more potions on each slot.";
    }
}
else
{
    item_desc[109]    = "Allows you to carry 1 more potion on each slot.";
}
item_color[109]   = c_lime;
item_object[109]  = obj_Potion_Pouch;
item_lock[109]    = false;
item_stack[109]   = 2;
item_type[109]    = "passive";
price_range[109]  = 150;

/*
    This item has yet to be implemented, but is planned. Hence, its code is commented.
item_name[109]    = "BOTTLED LIGHTNING"
if (Item_In_List(spr_Bottled_Lightning))
{
    if (Item_Value(spr_Bottled_Lightning)==3)
    {
        item_desc[109]    = "The spirit of the dragon adds a 45% chance#to shoot a fireball for 250% magic damage on attacking";
    }
    else
    {
        item_desc[109]    = "The spirit of the dragon adds a "+string(15+15*Item_Value(spr_Dragon_Tail))+"% chance#to shoot a fireball for "
        +string(150+50*Item_Value(spr_Dragon_Tail))+"% magic damage on attacking";
    }
}
else
{
    item_desc[109]    = "The spirit of the dragon adds a 15% chance#to shoot a fireball for 150% magic damage on attacking";
}
item_color[109]   = c_lime;
item_object[109]  = obj_Bottled_Lightning;
item_lock[109]    = false;
item_stack[109]   = 3;
item_type[109]    = "passive"
price_range[109]  = 180;*/

/*
    This item has yet to be implemented, but is planned. Hence, its code is commented.
item_name[103]    = "NINBY'S GRACE"
item_desc[103]    = "???"
item_color[103]   = c_lime;
item_object[103]  = obj_Redeemers_Essence;
item_lock[103]    = false;
item_stack[103]   = 1;
item_type[103]    = "passive"
price_range[104]  = 240;*/
