gml_pragma("forceinline");
var extra="",extraB="",extraC1="",extraB1="",extraC2=""; //Indicates how much will it be increased per level if in game
if (room==Game)
{
    extra=" (+10 per level)";
    extraB = " (+10 per level)";
    extraC1=" (+1 per level)";
    extraB1=" (+1 per 3 levels)";
    extraC2=" (+40 per level)";
}
sk_name[8]      = "Mace Swing";
sk_nameB[8]     = "Spinning Death";
sk_nameC[8]     = "Brawling Time";
sk_desc[8]      = "- swings the mace to deal [c="+string(DS_ORANGE)+"]"+string(100+(10*ability_lvl[0]))+extra+"%[/c] damage";
sk_descB[8]     = "- spins the mace around you for [c="+string(c_yellow)+"]"+string(2+floor(ability_lvl[1]/3))+extraB1+"[/c] seconds,#gaining 30 defense and dealing"
+" [c="+string(DS_ORANGE)+"]"+string(40+(10*ability_lvl[1]))+extraB+"%[/c] damage#per 1/10th of a second";
sk_descC[8]     = "- dashes to the closest enemies, becoming#invulnerable and slashing [c="+string(c_yellow)
+"]"+string(4+ability_lvl[2])+extraC1+"[/c] times to dealing#[c="+string(DS_ORANGE)+"]"+string(100+(40*ability_lvl[2]))+extraC2+"%[/c] damage each slash";
