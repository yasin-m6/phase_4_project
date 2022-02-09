/* * * * * * * * * * * * * * * * * * * * * * *
 *             yasin masihpoor               *
 *               9912358037                  *
 * * * * * * * * * * * * * * * * * * * * * * */


#include <iostream>

using namespace std;

class saving
{
    public:
        saving(double , int);
        ~saving();
        void calculate();
        static void modify(int);
        void print_info();
    private:
        static int rate;
        double savebal;
        double interest;
};

saving::saving(double savebal , int new_rate)
{
    this->savebal = savebal;
    rate = new_rate;
}

saving::~saving()
{

}

void saving::calculate()
{
    interest = (savebal * rate / 100 / 12);
    savebal += interest;
}

void saving::modify(int new_rate)
{
    rate = new_rate;
}

void saving::print_info()
{
    cout <<"_____________________________________________________________"<< endl << endl;
    cout << "you have " << savebal << " in your savebal" << endl;
    cout << "the monthly rate of interest is : " << interest << endl;
    cout << "rate : " << rate << endl;
}

int saving::rate = 0;

int main()
{

    int new_rate;

    saving s1(10000 , 3);
    saving s2(15000 , 3);

    s1.calculate();
    s2.calculate();

    s1.print_info();
    s2.print_info();

    cout <<"_____________________________________________________________"<< endl << endl;
    cout << "enter new rate : ";
    cin >> new_rate;

    saving::modify(new_rate);

    s1.calculate();
    s2.calculate();

    s1.print_info();
    s2.print_info();
}