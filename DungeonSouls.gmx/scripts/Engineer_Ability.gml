///Engineer_Ability()
gml_pragma("forceinline");
var extra="",extraB="",extraB1="",extraC=""; //Indicates how much will it be increased per level if in game
if (room==Game)
{
    extra=" (+10 per level)";
    extraB = " (+1 per 2 levels)";
    extraB1 = " (+20 per level)";
    extraC=" (+40 per level)";
}
sk_name[9]      = "Wrench Swing";
sk_nameB[9]     = "March, Beauties!";
sk_nameC[9]     = "Watch Your Feet";
sk_desc[9]      = "- strike with your wrench to#deal [c="+string(DS_ORANGE)+"]+"+string(80+(10*ability_lvl[0]))+extra+"%[/c] damage and increased knockback";
sk_descB[9]     = "- craft [c="+string(c_aqua)+"]"+string(3+floor(ability_lvl[1]*0.5))+extraB+"[/c] spider robots that home on#enemies and explode, "+
"dealing#[c="+string(DS_ORANGE)+"]"+string(160+(20*ability_lvl[1]))+extraB1+"%[/c] damage";        
sk_descC[9]     = "- surround yourself with landmines that explode on#enemy contact, dealing [c="+string(DS_ORANGE)+"]"+
string(160+(40*ability_lvl[2]))+extraC+"%[/c] damage";
