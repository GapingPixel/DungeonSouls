gml_pragma("forceinline");
var extra="",extraB="",extraC="",extraC1="",extraC2=""; //Indicates how much will it be increased per level if in game
if (room==Game)
{
    extra=" (+10 per level)";
    extraB = " (+1 per level)";
    extraC=" (+5 per level)";
    extraC1=" (+5 per level)";
    extraC2=" (+10 per level)";
}
sk_name[0]      = "Axe Swing";
sk_nameB[0]     = "Shout of Rage";
sk_nameC[0]     = "Thunder Axe";
sk_desc[0]      = "- creates small crescent slash that #deals [c="+string(DS_ORANGE)+"]+"+string(100+(10*ability_lvl[0]))+extra+"%[/c] damage";
sk_descB[0]     = "- stronger normal attack#increase movement speed for [c="+string(DS_YELLOW)+"]"+string(1+ability_lvl[1])+extraB+"[/c] second/s";        
sk_descC[0]     = "- throws an axe that deals [c="+string(DS_ORANGE)+"]"+string(100+(5*ability_lvl[2]))+extraC+"%[/c] damage to #single target and [c="+string(DS_YELLOW)+"]shock[/c] nearby enemies #with [c="+string(DS_ORANGE)+"]"+
    string(10+ability_lvl[2]*5)+extraC1+"%[/c]+[c="+string(DS_PURPLE)+"]"+string(90+(ability_lvl[2])*10)+extraC2+"%[/c] mixed damage";
