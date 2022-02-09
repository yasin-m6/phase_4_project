#ifndef ABZAR
#define ABZAR

    #include <string>

    enum SPRAYER_TYPE {SMALL_SPRAYER = 1 , BIG_SPRAYER};
    enum SHOVEL_TYPE {SMALL_SHOVEL = 1 , BIG_SHOVEL};
    enum DAS_TYPE {SICKLE = 1 , SCYTHE};
    enum WATER_PIPE_TYPE{PE = 1 , PVC};
    enum SHEN_KESH_type{SMAL_SHEN_KESH = 1 , BIG_SHEN_KESH};


    class TOOLS
    {
        friend class farmer;
        public:
        //~TOOLS();
        protected:
            std::string tools_name;
            unsigned int work_time;//tedad dafaat ghabel estefade
            unsigned int use_time;//baraye fahmidan tedad dafaat estefade shode

    };

    class SHOVEL: public TOOLS
    {
        friend class farmer;
        public:
            SHOVEL(int type);
            //~SHOVEL();
            int get_type();
            void set_type(int);
        private:
            SHOVEL_TYPE type;

    };

    class DAS : public TOOLS
    {
        friend class farmer;
        public:
            DAS(int);
            //~DAS();
            int get_type();
            void set_type(int);
        private:
            DAS_TYPE type;
    };

    class SPRAYER : public TOOLS
    {
        friend class farmer;
        public:
            SPRAYER(int);
            //~SPRAYER();
            int get_type();
            void set_type(int);

        private:
            SPRAYER_TYPE type;

    };

    class WATER_PIPE : public TOOLS
    {
        friend class farmer;
        public:
            WATER_PIPE(int);
            //~WATER_PIPE();
            int get_type();
            void set_type(int);

        private:
            int diameter_pipe;
            WATER_PIPE_TYPE type;
    };

    class SHEN_KESH : public TOOLS
    {
        friend class farmer;
        public:
            SHEN_KESH(int);
            //~SHEN_KESH();
            int get_type();
            void set_type(int);
        private:
            SHEN_KESH_type type;
    };

#endif
