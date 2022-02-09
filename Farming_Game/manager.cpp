#include "manager.h"
#include <stdexcept>
#include <iostream>


Manager::Manager(QObject *parent) : QObject(parent)
{
    for(size_t i = 0 ; i < 16 ; i++)
    {
        myFarm.push_back(vegtebale(0));
        cerr << i << " : " << myFarm[i].get_type() << endl;
    }

    theShop.reset_shop();

    cerr << "coin : " << me.reset_coin();
}

bool Manager::change_name(QString newName)
{
    std::string new_name = newName.toStdString();
    try
    {
        me.change_name(new_name);
        theShop.reset_shop();
        return  true;

    }
    catch (invalid_argument &e)
    {
        cerr << e.what() << std::endl;
        return false;
    }

}

int Manager::get_veg_type(int number)
{
    return myFarm[static_cast<size_t>(number)].get_type();
    cerr << "error";
}

void Manager::use_farm(int number, int type)
{
    if (myFarm[static_cast<size_t>(number)].get_type() == 0 && type == 6)
    {
        myFarm[static_cast<size_t>(number)].plowed();
        me.plow_farm();
    }
    else if(myFarm[static_cast<size_t>(number)].get_type() == 6 && (type > 0 && type < 6))
    {
        string seed_type;
        switch (type)
        {
            case 1 :
                seed_type = "tomato";
                break;
            case 2 :
                seed_type = "cabbage";
                break;
            case 3 :
                seed_type = "lettuce";
                break;
            case 4 :
                seed_type = "carrot";
                break;
            case 5 :
                seed_type = "wheat";
                break;
        }
        myFarm[static_cast<size_t>(number)].plant(type);
        me.use_seed(seed_type);
        me.plant_seeds();
    }
    else
    {
        string veg_type;
        switch (myFarm[static_cast<size_t>(number)].get_type())
        {
            case 1 :
                veg_type = "tomato";
                break;
            case 2 :
                veg_type = "cabbage";
                break;
            case 3 :
                veg_type = "lettuce";
                break;
            case 4 :
                veg_type = "carrot";
                break;
            case 5 :
                veg_type = "wheet";
                break;
        }
        me.add_new_vegtables(veg_type);
        myFarm[static_cast<size_t>(number)].crop_prudoct();
        me.crop_products();

    }
}

void Manager::water_veg(int number)
{
    me.water_vegs();
    myFarm[static_cast<size_t>(number)].water_vegtebale();
}

QString Manager::get_farm_source(int number)
{
    if( myFarm[static_cast<size_t>(number)].get_type()  > 1)
    {
        myFarm[static_cast<size_t>(number)].get_crop_time();
       return "qrc:/images/bags-icon-10474.png";
    }
     else
        return  "qrc:/images/Icons8-Windows-8-Diy-Spade.ico";
}

bool Manager::is_water_time(int number)
{
    return  myFarm[static_cast<size_t>(number)].check_water_time();
}

bool Manager::is_crop_time(int number)
{
    cerr << "crop is : "  << myFarm[static_cast<size_t>(number)].check_crop_product_time() << endl;
    return myFarm[static_cast<size_t>(number)].check_crop_product_time();
}


int Manager::get_water_time(int number)
{
    return myFarm[static_cast<size_t>(number)].get_water_time();
}

int Manager::get_crop_time(int number)
{
    return  myFarm[static_cast<size_t>(number)].get_crop_time();
}

bool Manager::seed_exist_in_bag(QString seed_name)
{
    return me.seed_exist(seed_name.toStdString());

}

bool Manager::veg_exist_in_bag(QString veg_name)
{
    return me.veg_exist(veg_name.toStdString());

}

bool Manager::is_tools_exist(QString tools_name)
{
    return me.tools_exist(tools_name.toStdString());

}

int Manager::get_veg_price(QString veg_type)
{
    return  theShop.get_veg_price(veg_type.toStdString());
}

int Manager::get_seed_price(QString seed_type)
{
    return  theShop.get_seed_price(seed_type.toStdString());
}

int Manager::get_tools_price(QString tools_name , int type)
{
    return  theShop.get_tools_price(tools_name.toStdString() , type);
}

bool Manager::buy_seed(QString seed_name)
{
    int cost = theShop.get_seed_price(seed_name.toStdString());
    if(me.can_pay(cost) == true)
    {
        me.buy_new_seed(seed_name.toStdString());
        me.change_coin(-cost);
        return true;
    }
    else
    {
        return false;
    }
}

bool Manager::buy_tools(QString tools_name , int type)
{
    int cost = theShop.get_tools_price(tools_name.toStdString() , type);

    cerr << "cost : " << cost << endl;

    if(me.can_pay(cost) == true)
    {
        me.add_tools(tools_name.toStdString() , type);
        me.change_coin(-cost);

        return  true;
    }
    else
    {
        return false;
    }
}

void Manager::sell_veg(QString veg_name)
{
    int cost = theShop.get_veg_price(veg_name.toStdString());

    if(me.veg_exist(veg_name.toStdString()) == true)
    {
        me.remove_product(veg_name.toStdString());
        me.change_coin(cost);
    }
}
