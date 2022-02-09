#include<iostream>
#include<stdexcept>
#include"../include/vegtebale.hpp"
#include "../include/help_functions.hpp"

using namespace std;

vegtebale::vegtebale(int type)
{
    while (1)
    {
        try
        {
            set_type(type);
            break;
        }
        catch(invalid_argument & e)
        {
            cerr << e.what() << endl;
        }
        
    }
    
    set_veg_info();
}

int vegtebale::get_type()
{
    return this->type;
}

void vegtebale::set_type(int type)
{
    if (type >= 0 && type < 8)
    {
        this->type = static_cast<VEG>(type);
    }
    else
    {
        throw invalid_argument("please choose a vegtebale you can plant!!!");
    }
    
    set_veg_info();
    
}

void vegtebale::set_veg_info()
{
    if(type == MT || type == PLOWED)
    {
        growing_date = 0;
        water_day = 0;
        time(&water_time);
        time(&plant_time);
        //water_time = 0;
        //plant_time = 0;
    }
    if(type == TOMATO)
    {
        growing_date = 20;
        water_day = 5;
    }
    else if (type == CABBAGE)
    {
        growing_date = 20;
        water_day = 5;
    }
    else if(type == CARROT)
    {
        growing_date = 20;
        water_day = 5;
    }
    else if(type == LETTUCE)
    {
        growing_date = 20;
        water_day = 5;
    }
    else if(type == WHEAT)
    {
        growing_date = 20;
        water_day = 5;
    }
    
}



void vegtebale::print()
{
    cout << "vegtebale i want to plant is : " ;

    if(type == TOMATO)
    {
        cout << "tomato" << endl;
    }
    if(type == CARROT)
    {
        cout << "carrot" << endl;
    }
    if(type == CABBAGE)
    {
        cout << "cabbage" << endl;
    }
    if(type == LETTUCE)
    {
        cout << "lettuce" << endl;
    }
    
    
}

bool vegtebale::check_crop_product_time()
{

    if ( get_time(plant_time) >= growing_date)
    {
        cerr << "crop true" << endl;

        return true;

    }
    else
    {
        cerr << "crop false" << endl;
        return false;

    }
    
}

bool vegtebale::check_water_time()
{
    if (get_time(water_time) >= water_day)
    {
        cerr << "water time true       : " << water_day << endl;
        return true;
    }
    else
    {
        cerr << "water time false        : " << water_day << endl;
        return false;
    }
}

int vegtebale::get_water_time()
{
    if(check_crop_product_time() == false)
    {
        if(check_water_time() == false)
        {
            //cerr << "water day : " << water_day << endl;
            //cerr << "diff : " << water_day - get_time(water_time) << endl;
            return water_day - get_time(water_time);
        }
        else
        {
            return 0;
        }
    }
    else
    {
        return -1;
    }
}

int vegtebale::get_crop_time()
{
    if(check_crop_product_time() == false)
    {
        return growing_date - get_time(plant_time);
    }
    else
    {
        return 0;
    }
}

void vegtebale::water_vegtebale()
{
    if(check_water_time() == true)
    {
        water_time = time(0);
    }
}

void vegtebale::crop_prudoct()
{
    if(check_crop_product_time() == true)
    {
        set_type(0);
    }
}

void vegtebale::plowed()
{
    set_type(6);
}

void vegtebale::plant(int type)
{
    set_type(type);
}
