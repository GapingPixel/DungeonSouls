///consume_ingredient(ingredient_type,amount)
/*
    Safely consumes ingredients. If amount inserted is bigger than the amount available,
    no deduction is performed.
*/
var ind = get_ingredient_index(argument0);
if (ind!=-1)
{
    var sum = global.ingredient_count[ind]-argument1;
    if (sum>0)
    {
        global.ingredient_count[ind]=sum;
    }
}
