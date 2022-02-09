#include<iostream>
#include<new>
#include"../include/farm.hpp"
#include "../include/vegtebale.hpp"


int farm::plant(int type)
{
    if (yourfarm.type == MT)
    {
        cout << "you have to plow your field first!!!" << endl;
        cout << "plowing ..." << endl;
        yourfarm.type = PLOWED;
        return 1;
    }
    else
    {
        if (yourfarm.type == MT)
        {
            yourfarm.set_type(type);
            return 0;
        }
        return 2;
        
    }
}

void farm::crop_product()
{
    yourfarm.crop_prudoct();
}

int farm::get_type()
{
    return yourfarm.get_type();
}

int farm::get_crop_time()
{

}






