#include "../include/help_functions.hpp"
#include <iostream>
#include <ctime>

using namespace std;


int get_time(time_t last)
{
    time_t now;
    //now = time(0);
    time(&now);
    //cerr << "now" << now << endl;
    //cerr << "last" << last << endl;

    //cerr << "time :" << static_cast<int>(difftime(now , last)) << endl ;
    return static_cast<int>(difftime(now , last));
}
