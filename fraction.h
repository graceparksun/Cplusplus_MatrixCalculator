#ifndef FRACTION_H
#define FRACTION_H
#include <iostream>
#include <sstream>
#include <cstdlib>
#include <iomanip>
#include <cctype>
#include "Exception.h"

using namespace std;

class fraction
{
    public:
        fraction(); //Constructor
        fraction(int w, int n, int d); //Constructor with 3 parameters
        ~fraction(); //Destructor
        fraction(const fraction &other);
        fraction& operator=(const fraction &other);
        fraction& operator+=(const fraction &other); // a += b
        fraction& operator-=(const fraction &other); // a -= b
        fraction& operator*=(const fraction &other); // a *= b
        fraction& operator/=(const fraction &other); // a /= b

        void setVal(int w, int n, int d); //Mutator
        void getVal(int &w, int &n, int &d);//Accessor
        void display();
        void setPrintwidth_f(int w);
        void negative_denom ();

        int findMaxwidth_f();

        friend
        fraction operator+(const fraction &x, const fraction &y);

        friend
        fraction operator-(const fraction &x, const fraction &y);

        friend
        fraction operator*(const fraction &x, const fraction &y);

        friend
        fraction operator/(const fraction &x, const fraction &y);
    
        friend
        ostream& operator<<(ostream &out, const fraction &f);

        friend
        istream& operator>>(istream &in, fraction &f);

        friend
        bool operator==(const fraction &x, const fraction &y);

        friend
        bool operator!=(const fraction &x, const fraction &y);

        friend
        bool operator>=(const fraction &x, const fraction &y);

        friend
        bool operator<=(const fraction &x, const fraction &y);

        friend
        bool operator<(const fraction &x, const fraction &y);

        friend
        bool operator>(const fraction &x, const fraction &y);


    private:
        int whole, num, denom, width;

        int gcd(int p, int q);
        void copy(const fraction &other);
        void reduce();
        void improper();
        void proper();
};

#endif // FRACTION_H
