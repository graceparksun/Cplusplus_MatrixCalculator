
#include "fraction.h"
#include "smartarray.h"
#include "smartarray2d.h"

smartArray2D::smartArray2D(int r, int c )
{
    if(r < 1)
        throw BAD_ROW;
    if(c < 1)
        throw BAD_COL;
    list = new smartArray [rows = r];
    for (int i=0; i < rows; i++)
        list[i] = smartArray(cols = c);
}

smartArray2D::~smartArray2D()
{
    nukem();
}

smartArray2D::smartArray2D(const smartArray2D &other)
{
    copy(other);
}

smartArray2D& smartArray2D::operator=(const smartArray2D &other)
{
    if(this != &other)
    {
        nukem();
        copy(other);
    }
    return *this;
}

smartArray& smartArray2D::operator[](int index)
{
    if(index < 0 || index >= rows)
        throw ROW_OUT_OF_BOUNDS;
    return list[index];
}

void smartArray2D::nukem()
{
    delete [] list;
    rows = cols = 0;
}

void smartArray2D::copy(const smartArray2D &other)
{
     list = new smartArray[rows = other.rows];
     for (int i=0; i < rows; i++)
         list[i] = smartArray(cols = other.cols);

     for(int j = 0; j < rows; j++)
         list[j] = other.list[j];
}

void smartArray2D::setVal_2D(int r, int c) //Mutator
{
    cols = c;
    rows = r;
}

void smartArray2D::getVal_2D(int &r, int &c)//Accessor
{
    c = cols;
    r = rows;
}

void smartArray2D::edit_data(smartArray2D& matrix, int row, int col, fraction data)
{
    smartArray2D matrix2;


    matrix.list[row][col] = data;
}

int smartArray2D::findMaxwidth_2D()
{
    int maxsize=0, temp;

    for (int i=0; i<rows; i++)
    {
        temp = list[i].findMaxwidth_1D();
        if (maxsize < temp)
            maxsize = temp;
    }
    return maxsize;
}

void smartArray2D::delete_matrix()
{
    delete [] list;
    rows = cols = 0;
}

ostream& operator<<(ostream& out, smartArray2D &matrix)
{
    int width_array;
    width_array = matrix.findMaxwidth_2D();
    if (matrix.rows == 0 || matrix.cols == 0)
        cout <<"No matrix" << endl;
    else
    {
        if(out == cout)
        {
            for (int j=0; j< matrix.rows; j++)
            {
                matrix.list[j].setPrintwidth_array(width_array);
                out << "|" << matrix.list[j] << "|" <<endl;
            }
        }
        else
        {
            out<<"Rows: "<<matrix.rows<<endl
               <<"Cols: "<<matrix.cols<<endl;
            for(int i = 0; i < matrix.rows; i++)
            {
                out << "For row " <<i <<endl;
                out<<matrix.list[i];
            }
        }
    }

    return out;
}

istream& operator>>(istream& in, smartArray2D &matrix)
{
    string line, row_number;
    stringstream ss;
    Exception a;
    matrix.nukem();
    if(in == cin)
    {
        do{
        try
        {
            cout<<"How many rows in your matrix: ";
            cin>>matrix.rows;
            a.check_input("Matrix rows have to be greater than zero. Try again. \n", matrix.rows);
        }
        catch (Exception e)
        {
            cout << e.get_message();
        }
        }while (matrix.rows<1);

        do{
        try
        {
            cout<<"How many columns in your matrix: ";
            cin>>matrix.cols;
            a.check_input("Matrix columns have to be greater than zero. Try again. \n", matrix.cols);
        }
        catch (Exception e)
        {
            cout << e.get_message();
        }
        }while (matrix.cols<1);

        matrix.list = new smartArray[matrix.rows];
        for (int i=0; i < matrix.rows; i++)
            matrix.list[i] = smartArray(matrix.cols);

        cin.ignore();
        for(int j = 0; j<matrix.rows; j++)
        {
            cout<<"Please enter the values for row "<<j<<":"<<endl;
            cin>>matrix.list[j];
        }
    }
    else
    {
        getline(in, line);
        ss<<line.substr(line.find(':')+1);
        ss>>matrix.rows;
        ss.clear();
        getline(in, line);
        ss<<line.substr(line.find(':')+1);
        ss>>matrix.cols;
        matrix.list = new smartArray[matrix.rows];
        for (int i=0; i < matrix.rows; i++)
            matrix.list[i] = smartArray(matrix.cols);

        for(int j = 0; j<matrix.rows; j++)
        {
            getline(in,row_number);
            in>>matrix.list[j];
        }
    }
    return in;
}


smartArray2D operator+(const smartArray2D &matrix1, const smartArray2D &matrix2)
{
    smartArray2D matrix3;

    if (matrix1.rows == matrix2.rows && matrix1.cols == matrix2.cols)
    {
        matrix3.list = new smartArray[matrix3.rows = matrix1.rows];
        for (int i=0; i<matrix1.rows; i++)
            matrix3.list[i] = smartArray(matrix3.cols = matrix1.cols);

        for(int k=0; k<matrix3.rows; k++)
        {
            for(int j=0; j<matrix3.cols; j++)
                matrix3.list[k][j] = matrix1.list[k][j] + matrix2.list[k][j];
        }
        return matrix3;
    }
    else
    {
        cout << "Addition dimension error." << endl;
        exit(0);
    }
}


smartArray2D operator*(const smartArray2D &matrix1, const smartArray2D &matrix2)
{
    smartArray2D matrix3;

    if (matrix1.cols == matrix2.rows)
    {
        matrix3.list = new smartArray[matrix3.rows = matrix1.rows];
        for (int i=0; i<matrix3.rows; i++)
            matrix3.list[i] = smartArray(matrix3.cols = matrix2.cols);
        cout << "matrix3.rows is: " << matrix3.rows << endl;
        cout << "matrix3.cols is: " << matrix3.cols << endl;
        for(int k=0; k<matrix3.rows; k++)
        {
            for(int j=0; j<matrix3.cols; j++)
            {
                matrix3.list[k][j] = fraction();
                for(int p=0; p<matrix2.rows; p++)
                {
                    matrix3.list[k][j] = matrix3.list[k][j] + (matrix1.list[k][p] * matrix2.list[p][j]);
                }
                cout << "matrix3.list[" << k << "][" <<j<< "] is:" << matrix3.list[k][j] << endl;
            }
        }
        return matrix3;
    }
    else
    {
        cout << "Multiplication dimension error." << endl;
        exit(0);
    }
}


void smartArray2D::Gaussian_Elimination ()
{
    if (check_dimension(rows, cols)==true) // cols = rows+1
    {
        int d;
        for(int m=0; m<rows;m++)
        {
            first_col_zero(m);
            for (int i=m; i<rows; i++)
                for (int j=cols-1; j>=0; j--)
                {
                    if (list[i][m] != fraction(0,0,d))
                        list[i][j] = (list[i][j])/(list[i][m]);
                }
            for (int j=m+1; j<rows;j++)
                for (int k=cols-1; k>=0; k--)
                {
                    if (list[j][m] != fraction(0,0,d))
                        list[j][k] = list[j][k] - list[m][k];
                }
         }
       for(int n=rows-2; n>=0;n--)
            for (int j=n; j>=0;j--)
                for (int k=cols-1; k>=0; k--)
                {
                    if (n+1 < cols)
                        list[j][k] = ( list[j][k] - ((list[j][n+1])*(list[n+1][k])) );
                }
       all_col_zero();

       bool zero_col = true;
       for (int n=0; n<rows-1 ; n++)
       {
           for (int l=0; l<rows-1; l++)
           {
               if (list[n][l] == fraction(1,0,d) )//not 0 and not 1
                   zero_col = false;
           }
       }
       if(zero_col)
           cout << "Matrix has infinite number of solutions or no solutions" << endl;
       else
       {
           cout << "Your solutions are, ";
           if (rows >= 1)
               cout << "x = " << list[0][cols-1] ;
           if (rows >= 2)
               cout << ", and y = " << list[1][cols-1] ;
           if (rows >= 3)
               cout << ", and z = " << list[2][cols-1] ;
           if (rows >=4)
               cout << ", and s = " << list[3][cols-1] ;

       }

    }

    else
        cout << "Matrix does not have the appropriate dimension for 'solve'." <<endl
             << "Please use another matrix.\n" << endl;
}


void smartArray2D::first_col_zero (int m)
{
    int row_num = rows-1, d;
    for (int i=rows-1; i>=m; i--)
    {
        if (list[i][m] == fraction(0,0,d))
        {
            smartArray temp = list[i];
            list[i]=list[row_num];
            list[row_num]=temp;

            row_num --;
        }
    }
}


void smartArray2D::all_col_zero ()
{
    int d;

    for (int i=rows-1; i>=0; i--)
    {
        bool all_zero = true;
        for (int k=cols-1; k>=0; k--)
        {
            if (list[i][k] != fraction(0,0,d))
                all_zero = false;
        }
        if (all_zero == true)
        {
            smartArray temp=list[i];
            for (int h=i; h<=rows-2; h++)
                list[h] = list[h+1];
            list[rows-1] = temp;
        }

    }
}


bool smartArray2D::check_dimension(int r, int c)
{
   return (c==r+1);
}
