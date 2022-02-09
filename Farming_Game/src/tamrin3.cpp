/*

Yasin Masihpoor
9912358037

this program get one number.
print all of prime number between 2 & 1023.
check if the number is prime or not.

*/

#include <iostream>
#include <iomanip>
#include <bitset>

using namespace std;


bool bitset_prime(int);



int main()
{
    int number;
    string status;
    
    while (1)
    {
        cout << endl << "enter number for prime check : ";
        cin >> number;

        if (number < 2 && number >= 1023)
        {
            cout << "number has to be between 2 and 1023 !!!!!" << endl;
        }
        else
        {
            break;
        }
    }

    if (bitset_prime(number) == false)
    {
        status = "not prime";
    }
    else
    {
        status = "prime";
    }
    

    cout << number << " is " << status << endl;
}






bool bitset_prime(int number)
{
    bitset < 1023 > primes;
    bool is_prime = false;
    int n = 0;

    primes.set();
    primes.reset(0);
    primes.reset(1);

    for (size_t i = 2; i < 1023; i++)
    {
        if (primes.test(i) == 1)
        {
            for(int num = 2 ; i * num < 1023 ; num++)
            {
                primes.reset(i*num);
            }
            
        }
        
        
    }

    cout << "____________________________________________________________________________________________________" << endl << endl;

    cout << "prime number between 2 and 1023 are :" << endl << endl;
    
    for (size_t i = 0; i < 1023; i++)
    {
        if (primes.test(i) == 1)
        {
            cout << setw(4) << setfill('0') << i << "  ";
            n++;

            if (i == number)
            {
                is_prime = true;
            }
            

            if (n == 17)
            {
                cout << endl;
                n = 0;
            }
        }    
        
    }

    cout << endl;

    cout << "____________________________________________________________________________________________________" << endl << endl;

    return is_prime;
    
}