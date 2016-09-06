gml_pragma("forceinline");
var extra="",extraB="",extraC1="",extraC2="",extraTag=""; //Indicates how much will it be increased per level if in game
if (room==Game)
{
    extra=" (+15 per level)";
    extraB = " (+30 per level)";
    extraC1=" (+20 per level)";
    extraC2=" (+40 per level)";
    extraTag="#";
}
sk_name[3]      = "Sword Slash";
sk_nameB[3]     = "Multi Cleave";
sk_nameC[3]     = "Mega Swords";
sk_desc[3]      = "- wide crescent swing [c="+string(DS_ORANGE)+"]"+string(85+(15*ability_lvl[0]))+extra+"%[/c] damage";
sk_descB[3]     = "- slashes ALL enemies within the range#that deals [c="+string(DS_ORANGE)+"]"+string(50+(30*ability_lvl[1]))+extraB+"%[/c] of attack damage";
sk_descC[3]     = "- creates moving swords that#pierce through enemies [c="+string(DS_ORANGE)+"]"+string(50+(20*ability_lvl[2]))+extraC1+"%[/c]"+extraTag+"[c="+string(DS_PURPLE)+"]"
+string(100+(40*ability_lvl[2]))+extraC2+"%[/c] mixed damage";
