#include<iostream>
#include<stdexcept>
#include"../include/tools.hpp"
#include "../include/help_functions.hpp"

using namespace std;


DAS::DAS(int type):TOOLS()
{

    this->type = static_cast<DAS_TYPE>(type);

    if ( this->type == SICKLE)
    {
        this->tools_name = "das";
        work_time = 10;
    }
    else
    {
        this->tools_name = "das";
        work_time = 15;
    }
    use_time = 0;

}




int DAS::get_type()
{
    return type;
}

void DAS::set_type(int type)
{
    if (type == 1)
    {
        this->type = SICKLE;
    }
    else if (type == 2)
    {
        this->type = SCYTHE;
    }
    else
    {
        throw invalid_argument("we have just 2 type of DAS");
    }
}

SHOVEL::SHOVEL(int type):TOOLS()
{
    
    try
    {
        set_type(type);
        if (this->type == SMALL_SHOVEL)
        {
            this->tools_name = "shovel";
            work_time = 15;
        }
        else
        {
           this->tools_name = "shovel";
            work_time = 20;
        }   
        use_time = 0;
    }
    catch( invalid_argument & e)
    {
        cerr << e.what() << endl;
    }
    

}




int SHOVEL::get_type()
{

    return type;
}

void SHOVEL::set_type(int type)
{
    if (type == 1)
    {
        this->type = SMALL_SHOVEL;
    }
    else if (type == 2)
    {
        this->type = BIG_SHOVEL;
    }
    else
    {
        throw invalid_argument("we have just 2 type of shovel");
    }
}

SPRAYER::SPRAYER(int type):TOOLS()
{
    
    try
    {
        set_type(type);
        if (this->type == SMALL_SPRAYER)
        {
            this->tools_name = "sprayer";
            work_time = 8;
        }
        else
        {
            this->tools_name = "sprayer";
            work_time = 16;
        }
        use_time = 0;
    }
    catch(const std::exception& e)
    {
        cerr << e.what() << endl;
    }
    

}




int SPRAYER::get_type()
{
    return type;
}


void SPRAYER::set_type(int type)
{
    if (type == 1)
    {
        this->type = SMALL_SPRAYER;
    }
    else if (type == 2)
    {
        this->type = BIG_SPRAYER;
    }
    else
    {
        throw invalid_argument("we have just 2 type of sprayer");
    }
}

WATER_PIPE::WATER_PIPE(int type):TOOLS()
{
    try
    {
        set_type(type);
        if (this->type == PE)
        {
            this->tools_name = "water_pipe";
            work_time = 20;
            diameter_pipe = 10;
        }
        else
        {
            this->tools_name = "water_pipe";
            work_time = 25;
            diameter_pipe = 16;//millimetre
        }
        use_time = 0; 
    }
    catch(invalid_argument & e)
    {
        std::cerr << e.what() << '\n';
    }
    
}




int WATER_PIPE::get_type()
{
    return type;
}
void WATER_PIPE::set_type(int type)
{
    if (type == 1)
    {
        this->type = PE;
    }
    else if (type == 2)
    {
        this->type = PVC;
    }
    else
    {
        throw invalid_argument("we have just 2 type of water pipe");
    }
}



SHEN_KESH::SHEN_KESH(int type)
{
     try
    {
        set_type(type);
        if (type == PE)
        {
            this->tools_name = "shen_kesh";
            work_time = 10;
        }
        else
        {
            this->tools_name = "shen_kesh";
            work_time = 15;
        }
        use_time = 0; 
    }
    catch(invalid_argument & e)
    {
        std::cerr << e.what() << '\n';
        cout << "smal_shen_kesh = 1 & big_shen_kesh = 2" << endl; 
        //type = get_info(1 , "shen kesh type");
    }
}




int SHEN_KESH::get_type()
{
        return  type;
}

void SHEN_KESH::set_type( int type)
{
    if (type == 1)
    {
        this->type = SMAL_SHEN_KESH;
    }
    else if(type == 2)
    {
        this->type = BIG_SHEN_KESH;
    }
    else
    {
        throw invalid_argument("we have just 2 type of shen kesh!!!!!");
    }
    
}


