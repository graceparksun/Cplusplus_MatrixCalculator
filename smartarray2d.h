#ifndef SMARTARRAY2D_H
#define SMARTARRAY2D_H
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include "fraction.h"
#include "smartarray.h"
#include "Exception.h"

enum ERRORS_2D {BAD_ROW, BAD_COL, ROW_OUT_OF_BOUNDS};

class smartArray2D
{
    public:
        smartArray2D(int r = 5, int c = 5);
        ~smartArray2D();
        smartArray2D(const smartArray2D &other);
        smartArray2D& operator=(const smartArray2D &other);
        smartArray& operator[](int index);

        void delete_matrix ();
        void setVal_2D(int r, int c); //Mutator
        void getVal_2D(int &r, int &c);//Accessor
        int findMaxwidth_2D();
        void edit_data(smartArray2D& matrix, int row, int col, fraction data);
        void Gaussian_Elimination();

        friend
        ostream& operator<<(ostream& out, smartArray2D &list);

        friend
        istream& operator>>(istream& in, smartArray2D &list);

        friend
        smartArray2D operator+(const smartArray2D &matrix1, const smartArray2D &matrix2);

        friend
        smartArray2D operator*(const smartArray2D &matrix1, const smartArray2D &matrix2);

    private:
       smartArray *list;
       int rows, cols;
       void copy(const smartArray2D &other);
       void nukem();
       void first_col_zero (int col_num);
       void all_col_zero ();
       bool check_dimension(int r, int c);
};

#endif // SMARTARRAY2D_H
