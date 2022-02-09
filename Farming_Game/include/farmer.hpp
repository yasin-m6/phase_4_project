#ifndef FARMER
#define FARMER

    #include <string>
    #include "vegtebale.hpp"
    #include "farm.hpp"
    #include "tools.hpp"
    

    class farmer
    {
        public:

            int reset_coin();
            std::string get_name();
            void set_name(std::string);
            void change_coin(int);
            void change_name(std::string);

            void water_vegs();
            void plant_seeds();
            void crop_products();
            void plow_farm();

            void add_new_vegtables(std::string);
            void remove_product(std::string );

            bool can_pay(int);

            void add_tools(std::string , int);
            void sell_tools(std::string , int);

            void buy_new_seed(std::string);
            void use_seed(std::string);

            bool seed_exist(string);
            bool veg_exist(string);
            bool tools_exist(string);


        private:
            std::string farmer_name;
            unsigned int coin;

            std::vector<int>  vegs_number;
            std::vector<std::string>veg_type;

            std::vector<int> seed_number;
            std::vector<std::string> seed_type;

            std::vector<string> my_tools;
            std::vector<int> my_tools_type;

            std::vector<SHOVEL> my_shovel;
            std::vector<DAS> my_das;
            std::vector<SPRAYER> my_sprayer;
            std::vector<WATER_PIPE> my_water_pipe;
            std::vector<SHEN_KESH> my_shen_kesh;


            int search_veg_seed(char , std::string);

    };

#endif
