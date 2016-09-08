///default_hero_weapon(int hero_index)
gml_pragma("forceinline");
var result =-0;
switch (argument0)
{
    case 0:
        if (rank[argument0]<5)
        {
            result = 0;
        }
        else
        {
            result = 1;
        }
    break;
    case 1:
        if (rank[argument0]<5)
        {
            result = 2;
        }
        else
        {
            result = 3;
        }
    break;
    case 2:
        if (rank[argument0]<5)
        {
            result = 4;
        }
        else
        {
            result = 5;
        }
    break;
    case 3:
        if (rank[argument0]<5)
        {
            result = 6;
        }
        else
        {
            result = 7;
        }
    break;
    case 4:
        if (rank[argument0]<5)
        {
            result = 8;
        }
        else
        {
            result = 9;
        }
    break;
    case 5:
        if (rank[argument0]<5)
        {
            result = 10;
        }
        else
        {
            result = 11;
        }
    break;
    case 6:
        if (rank[argument0]<5)
        {
            result = 12;
        }
        else
        {
            result = 13;
        }
    break;
    case 7:
        if (rank[argument0]<5)
        {
            result = 14;
        }
        else
        {
            result = 15;
        }
    break;
    case 8:
        if (rank[argument0]<5)
        {
            result = 16;
        }
        else
        {
            result = 17;
        }
    break;
    case 9:
        if (rank[argument0]<5)
        {
            result = 18;
        }
        else
        {
            result = 19;
        }
    break;
}
return result;
