///Add_Rank_Point(type)
/*
TYPES
Enemy
 - Easy = 0.001%
 - Normal/Superior
    1 - Normal = 0.1%
    2 - Elite = 0.5%
    3 - Superior = 1%
Bosses
 - Easy = 2%
4   - Final boss = 1%
5   - Other boss = 1/no. of bosses%
 - Normal = 5%
4   - Final boss = 3%
5   - Other boss = 2/no. of bosses%
 - Nightmare = 10% 
4   - Final boss = 5%
5   - Other boss = 5/no. of bosses%
 - Impossible = 20%
4   - Final boss = 12%
5   - Other boss = 8/no. of bosses%
Loots
6 - Coins = 0.001%
 - Items = 0.08%
7  - Common = 0.01%
8  - Uncommon = 0.03% 
9  - Rare = 0.04%
*/
var BOSS_MAX = 8;
switch(argument0)
{
    case 1:
        with obj_Hero
        {
            if rank[char] != 5
            {
                if global.difficulty = EASY //ALL TYPES
                {
                    global.rank_cur_point[char] += (0.001*0.01)*rank_point[rank[char]];
                }
                else
                {
                    //NORMAL
                    global.rank_cur_point[char] += (0.1*0.01)*rank_point[rank[char]];
                }
            }
        }
        break;
    case 2:
        with obj_Hero
        {
            if rank[char] != 5
            {
                if global.difficulty = EASY //ALL TYPES
                {
                    global.rank_cur_point[char] += (0.001*0.01)*rank_point[rank[char]];
                }
                else
                {
                    //ELITE
                    global.rank_cur_point[char] += (0.5*0.01)*rank_point[rank[char]];
                }
            }            
        }
        break;
    case 3:
        with obj_Hero
        {
            if rank[char] != 5
            {        
                if global.difficulty = EASY //ALL TYPES
                {
                    global.rank_cur_point[char] += (0.001*0.01)*rank_point[rank[char]];
                }
                else
                {
                    //SUPERIOR
                    global.rank_cur_point[char] += (0.5*0.01)*rank_point[rank[char]];
                }
            }
        }
        break;
    case 4:
        with obj_Hero
        {
            if rank[char] != 5
            {        
                if global.difficulty = EASY //FINAL BOSS
                    global.rank_cur_point[char] += (1*0.01)*rank_point[rank[char]];   
                else if global.difficulty = NORMAL //FINAL BOSS
                    global.rank_cur_point[char] += (3*0.01)*rank_point[rank[char]];
                if global.difficulty = HARD //FINAL BOSS
                    global.rank_cur_point[char] += (5*0.01)*rank_point[rank[char]];
                if global.difficulty = IMPOSSIBLE //FINAL BOSS
                    global.rank_cur_point[char] += (12*0.01)*rank_point[rank[char]];                    
            }
        }
        break;
    case 5:
        with obj_Hero
        {
            if rank[char] != 5
            {        
                if global.difficulty = EASY //OTHER BOSS
                    global.rank_cur_point[char] += ((1/BOSS_MAX)*0.01)*rank_point[rank[char]];   
                else if global.difficulty = NORMAL //OTHER BOSS
                    global.rank_cur_point[char] += ((2/BOSS_MAX)*0.01)*rank_point[rank[char]];
                if global.difficulty = HARD //OTHER BOSS
                    global.rank_cur_point[char] += ((5/BOSS_MAX)*0.01)*rank_point[rank[char]];
                if global.difficulty = IMPOSSIBLE //OTHER BOSS
                    global.rank_cur_point[char] += ((8/BOSS_MAX)*0.01)*rank_point[rank[char]];                    
            }
        }
        break;
    case 6:
        with obj_Hero
        {
            if rank[char] != 5        
                global.rank_cur_point[char] += ((0.001)*0.01)*rank_point[rank[char]];    
        }
        break;
    case 7:
        with obj_Hero
        {
            if rank[char] != 5
                global.rank_cur_point[char] += (0.01*0.01)*rank_point[rank[char]];        
        }
        break;
    case 8:
        with obj_Hero
        {
            if rank[char] != 5        
                global.rank_cur_point[char] += (0.03*0.01)*rank_point[rank[char]];        
        }
        break;        
    case 9:
        with obj_Hero
        {
            if rank[char] != 5        
                global.rank_cur_point[char] += (0.04*0.01)*rank_point[rank[char]];        
        }
        break;
}
