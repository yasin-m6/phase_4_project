#ifndef VEGTEBALES
#define VEGTEBALES

    #include <vector>
    #include <ctime>
    #include <string>

    enum VEG{MT ,TOMATO , CABBAGE , CARROT , LETTUCE , WHEAT , PLOWED};


    class vegtebale
    {
        public:
        friend class farm;
            vegtebale(int = 0);

            int get_type();
            void set_type(int);

            bool check_crop_product_time();
            bool check_water_time();

            int get_water_time();
            int get_crop_time();

            void crop_prudoct();
            void water_vegtebale();

            void plowed();
            void plant(int);

            void print();

        private:
            void set_veg_info();
            VEG type;
            unsigned int growing_date;
            time_t plant_time; //time of plant the seed
            unsigned int water_day; //to now how often do you irrigate your plant
            time_t water_time;

    };

    

#endif
