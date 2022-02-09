#ifndef MAZRAE
#define MAZRAE

    #include<vector>
    #include "vegtebale.hpp"
    using namespace std;

    class farm
    {

        public:

            int plant(int);
            int get_type();
            int chek_water_time();
            int get_water_time();
            int get_crop_time();
            bool check_crop_time();
            void water_product();
            void crop_product();
        
        private:
            vegtebale yourfarm;
    };






#endif
