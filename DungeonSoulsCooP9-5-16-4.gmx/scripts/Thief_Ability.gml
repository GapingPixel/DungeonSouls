gml_pragma("forceinline");
var extra="",extraB="",extraC="",extraB1="",extraB2=""; //Indicates how much will it be increased per level if in game
if (room==Game)
{
    extra=" (+20 per level)";
    extraB = " (+30 per level)";
    extraC=" (+1 per level)";
    extraB1=" (+5 per level)";
    extraB2=" (+10 per level)";
}
sk_name[2]      = "Dagger Throw";
sk_nameB[2]     = "Thief Bomb";
sk_nameC[2]     = "Invisibility";
sk_desc[2]      = "- throws dagger that deals [c="+string(DS_ORANGE)+"]"+string(80+(20*ability_lvl[0]))+extra+"%[/c] damage";
sk_descB[2]     = "- toss a bomb that deals [c="+string(DS_ORANGE)+"]"+string(100+(30*ability_lvl[1]))+extraB+"%[/c] damage#and creates circular explosions that deal#"+
"[c="+string(DS_ORANGE)+"]"+string(50+ability_lvl[2]*5)+extraB1+"%[/c]+[c="+string(DS_PURPLE)+"]"+string((100+10*ability_lvl[1]))+extraB2+"%[/c] mixed damage";
sk_descC[2]     = "- turns invisible and unhittable#for [c="+string(DS_YELLOW)+"]"+string(1+(1*ability_lvl[2]))+extraC+"[/c] second/s.#Each attack lowers the duration by 0.5 seconds";
