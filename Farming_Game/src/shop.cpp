#include <iostream>
#include "../include/shop.hpp"
#include <algorithm>

using namespace std;

void SHOP::reset_shop()
{
    tools_type.at(0) = "shovel 1";
    tools_type.at(1) = "shovel 2";
    tools_type.at(2) = "das 1";
    tools_type.at(3) = "das 2";
    tools_type.at(4) = "sprayer 1";
    tools_type.at(5) = "sprayer 2";
    tools_type.at(6) = "water_pipe 1";
    tools_type.at(7) = "water_pipe 2";
    tools_type.at(8) = "shen_kesh 1";
    tools_type.at(9) = "shen_kesh 2";

    tools_price.at(0) = 5;
    tools_price.at(1) = 10;
    tools_price.at(2) = 5;
    tools_price.at(3) = 10;
    tools_price.at(4) = 5;
    tools_price.at(5) = 10;
    tools_price.at(6) = 5;
    tools_price.at(7) = 10;
    tools_price.at(8) = 5;
    tools_price.at(9) = 10;

    veg_name.at(0) = "tomato";
    veg_name.at(1) = "cabbage";
    veg_name.at(2) = "lettuce";
    veg_name.at(3) = "carrot";
    veg_name.at(4) = "wheat";

    veg_price.at(0) = 10;
    veg_price.at(1) = 4;
    veg_price.at(2) = 6;
    veg_price.at(3) = 8;
    veg_price.at(4) = 3;

    seed_price.at(0) = 5;
    seed_price.at(1) = 2;
    seed_price.at(2) = 3;
    seed_price.at(3) = 4;
    seed_price.at(4) = 1;

/*

    for (size_t i = 0; i < 5; i++)
    {

    }
    */
    
}


bool SHOP::check_avelable(string name , int number)
{
    if (name == "shovel" || name == "das" || name == "shen_kesh" || name == "water_pipe" || name == "sprayer")
    {
        for (size_t i = 0; i < avelable_tools.size() ; i++)
        {
            if(name == avelable_tools[i])
            {
                if(number == avelable_tools_type[i])
                {
                    return true;
                }
            }
        }
        
    }
    else
    {
        for (size_t i = 0 ; i < avelable_veg.size() ; i++)
        {
            if(name == avelable_veg[i])
            {
                if(number == avelable_veg_number[i])
                {
                    return true;
                }
            }
        }
    }

    return false;

}




int SHOP::get_tools_price(string name , int type)
{
    name = name + " " + to_string(type);

    size_t i = 0;
    for ( ; i < tools_type.size(); i++)
    {
        if(tools_type[i] == name)
        {
            break;
        }
    }

    if(i  < tools_type.size())
    {
        return tools_price[i];
    }
    else
    {
        return -1;
    }
    
}

int SHOP::get_seed_price(string name)
{

    size_t i = 0;
    for ( ; name != veg_name[i] && i < veg_name.size(); i++)
    { 
    }

    if(i < veg_name.size())
    {
        return  seed_price[i];
    }
    else
    {
        return -1;
    }
}

int SHOP::get_veg_price(string name)
{

    size_t i = 0;
    for ( ; name != veg_name[i] && i < veg_name.size(); i++)
    { 
    }

    if(i < veg_name.size())
    {
        return  veg_price[i];
    }
    else
    {
        return -1;
    }
}


