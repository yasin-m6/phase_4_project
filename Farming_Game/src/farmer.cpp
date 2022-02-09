#include <iostream>
#include"../include/farmer.hpp"
#include <exception>
#include <algorithm>
#include <iterator>
#include<chrono>
#include<thread>

using namespace std;



int farmer::reset_coin()
{
    coin = 100;
    return static_cast<int>(coin) ;
}

void farmer::set_name(string name)
{
    for (size_t i = 0; i < name.length(); i++)
    {
        if ( ( isalpha(name[i]) != isalpha('a') ) && ( isalpha(name[i]) != isalpha('A') ) )
        {
            throw(invalid_argument("name has to be just contain by alphabets!!!"));
        }
        
    }
    farmer_name = name;  
}

void farmer::change_coin(int number)
{
    if(-1*number >= coin)
    {
        coin = 0;
    }
    else
    {
        coin += number;
    }
}



void farmer::add_new_vegtables(string veg_name)
{

}

void farmer::remove_product(string veg_name)
{
    size_t i = 0;
    for( ; i < veg_type.size() ; i++)
    {
        if(veg_type[i] == veg_name)
        {
            break;
        }
    }

    if(i < veg_type.size())
    {
        if(vegs_number[i] > 1)
        {
            vegs_number[i]--;
        }
        else
        {
            veg_type.erase(veg_type.begin() + static_cast<int>(i) );
            vegs_number.erase(vegs_number.begin() + static_cast<int>(i) );
        }
    }
}

bool farmer::can_pay(int cost)
{
    cerr << "coin : " << coin << endl;
    if (cost <= static_cast<int>(coin))
    {
        return true;
    }
    else
    {
        return false;
    }
    
}

void farmer::add_tools(string tools_name , int tools_type)
{
    cerr << "name : " << tools_name << endl;
    cerr << "type : " << tools_type << endl;
    if (tools_name != "shovel" && tools_name != "sprayer" && tools_name != "das" && tools_name != "water_pipe" && tools_name != "shen_kesh")
    {
        throw invalid_argument ("tools name is undefined!!!!");
    }
    if (tools_type != 1 && tools_type != 2)
    {
        throw invalid_argument ("tools type is undefined!!!!");
    }

    size_t i = 0;
    for( ; i < my_tools.size() ; i++)
    {
        if(tools_name == my_tools[i])
        {
            break;
        }
    }

    if(i < my_tools.size())
    {
        my_tools_type[i] = tools_type;

        if(tools_name == "shovel")
        {
           my_shovel[0].set_type(tools_type);
        }
        else if(tools_name == "das")
        {
            my_das[0].set_type(tools_type);
        }
        else if(tools_name == "sprayer")
        {
            my_sprayer[0].set_type(tools_type);
        }
        else if(tools_name == "water_pipe")
        {
            my_water_pipe[0].set_type(tools_type);
        }
        else
        {
            my_shen_kesh[0].set_type(tools_type);
        }
    }
    else
    {
        my_tools.push_back(tools_name);
        my_tools_type.push_back(tools_type);

        if(tools_name == "shovel")
        {
            my_shovel.push_back(SHOVEL(tools_type));
        }
        else if(tools_name == "das")
        {
            my_das.push_back(DAS(tools_type));
        }
        else if(tools_name == "sprayer")
        {
            my_sprayer.push_back(SPRAYER(tools_type));
        }
        else if(tools_name == "water_pipe")
        {
            my_water_pipe.push_back(WATER_PIPE(tools_type));
        }
        else
        {
            my_shen_kesh.push_back(SHEN_KESH(tools_type));
        }
    }
    
}


bool farmer::tools_exist(string tools_name)
{
    for(size_t i = 0 ; i < my_tools.size() ; i++)
    {
        if(tools_name == my_tools[i])
        {
            return true;
        }
    }

    return false;
}

void farmer::buy_new_seed(string seed_name)
{
    size_t i = 0;
    for( ; i < seed_type.size() ; i++)
    {
        if(seed_name == seed_type[i])
        {
            break;
        }
    }

    if(i < seed_type.size())
    {
        seed_number[i]++;
    }
    else
    {
        seed_type.push_back(seed_name);
        seed_number.push_back(1);
    }
}

void farmer::use_seed(string seed_name)
{
    size_t i = 0;
    for( ; i < seed_type.size() ; i++)
    {
        if(seed_type[i] == seed_name)
        {
            break;
        }
    }

    if(i < seed_type.size())
    {
        if(seed_number[i] > 1)
        {
            seed_number[i]--;
        }
        else
        {
            seed_type.erase(seed_type.begin() + static_cast<int>(i));
            seed_number.erase(seed_number.begin() + static_cast<int>(i));
        }
    }
}

bool farmer::seed_exist(string seed_name)
{
    cerr << seed_name << endl;
    size_t i = 0;
    for( ; i < seed_type.size() ; i++)
    {
        if(seed_type[i] == seed_name)
        {
            break;
        }
    }

    if(i < seed_type.size())
    {
        return true;
    }
    else
    {
        cerr << "nabood" << endl;
        return false;
    }
}

bool farmer::veg_exist(string veg_name)
{
    size_t i = 0;
    for( ; i < veg_type.size() ; i++)
    {
        if(veg_type[i] == veg_name)
        {
            break;
        }
    }

    if(i < veg_type.size())
    {
        return true;
    }
    else
    {
        return false;
    }
}



void farmer::water_vegs()
{
    my_water_pipe[0].use_time++;
}

void farmer::crop_products()
{
    my_das[0].use_time++;
}

void farmer::plant_seeds()
{
    my_shovel[0].use_time++;

    my_sprayer[0].use_time++;
    
}

void farmer::plow_farm()
{
    my_shen_kesh[0].use_time++;
}

void farmer::change_name(string newName)
{

    this->farmer_name = newName;
}
