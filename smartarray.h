#ifndef SMARTARRAY_H
#define SMARTARRAY_H

#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <iomanip> //for setw
#include "fraction.h"

using namespace std;

enum ERRORS {BAD_SIZE, OUT_OF_BOUNDS};
enum SORT {LOW_TO_HIGH, HIGH_TO_LOW};

class smartArray
{
    public:
    smartArray(int s = 10);
    ~smartArray();
    smartArray(const smartArray &other);
    smartArray& operator=(const smartArray &other);

    fraction& operator[](int index);
    void order(SORT s = LOW_TO_HIGH);
    void setVal_1D(int s); //Mutator
    void getVal_1D(int &s);//Accessor
    void setPrintwidth_array (int w);
    int findMaxwidth_1D();

    friend
    ostream& operator<<(ostream& out, const smartArray &array);

    friend
    istream& operator>>(istream& in, smartArray &array);


private:
    fraction *list;
    int size, width_array;

    void copy(const smartArray &other);
    void nukem();
    void swap(fraction &x, fraction &y);
    void initialize();
};

#endif // SMARTARRAY_H
