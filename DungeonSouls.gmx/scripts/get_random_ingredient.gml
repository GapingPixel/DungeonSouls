var _result = spr_Metal_Scrap;
var rand_ = irandom(11);
if (rand_<3)
{
    _result=spr_Metal_Scrap;
}
else if (rand_<6)
{
    _result=spr_Magic_Dust;
}
else if (rand_<7)
{
    _result=spr_Magic_Essence;
}
else if (rand_<8)
{
    _result=spr_Fire_Shard;
}
else if (rand_<9)
{
    _result=spr_Ice_Shard;
}
else if (rand_<10)
{
    _result=spr_Bone;
}
else if (rand_<11)
{
    _result=spr_Ectoplasm;
}
return _result;
