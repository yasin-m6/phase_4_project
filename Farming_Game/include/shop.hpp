#ifndef BAZAR
#define BAZAR

#include "tools.hpp"
#include "vegtebale.hpp"
#include <vector>
#include <array>

class SHOP
{
    public:
        void reset_shop();

        bool check_avelable(std::string , int);

        int get_tools_price(std::string , int);
        int get_seed_price(std::string);
        int get_veg_price(std::string);
    private:
        std::vector<std::string> avelable_tools;
        std::vector<int> avelable_tools_type;
        std::vector<std::string> avelable_veg;
        std::vector<int> avelable_veg_number;

        std::array <std::string , 10> tools_type;
        std::array <int , 10> tools_price;
        std::array <std::string , 5> veg_name;
        std::array <int , 5> seed_price;
        std::array <int , 5> veg_price;
};


#endif
