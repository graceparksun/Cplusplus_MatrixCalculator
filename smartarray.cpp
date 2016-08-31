#include "fraction.h"
#include "smartarray.h"

smartArray::smartArray(int s)
{
    if(s < 1)
        throw BAD_SIZE;
    list = new fraction[size = s];
    initialize();
}

smartArray::~smartArray()
{
    nukem();
}

smartArray::smartArray(const smartArray &other)
{
    copy(other);
}

smartArray& smartArray::operator=(const smartArray &other)
{
    if(this != &other)
    {
        nukem();
        copy(other);
    }
    return *this;
}

fraction& smartArray::operator[](int index)
{
    if(index < 0 || index >= size)
        throw OUT_OF_BOUNDS;
    return list[index];
}

void smartArray::order(SORT s)
{

    for(int i = 0; i < size; i++)
        for(int j = 0; j < size; j++)
            if(HIGH_TO_LOW ?
               list[i] > list[j] :
               list[i] < list[j])
                swap(list[i], list[j]);

}

void smartArray::setVal_1D(int s) //Mutator
{
   size = s;
}

void smartArray::getVal_1D(int &s)//Accessor
{
    s = size;
}

int smartArray::findMaxwidth_1D()
{
    int maxsize_1D = 0,temp;
    for (int i=0; i<size; i++)
    {
        temp = list[i].findMaxwidth_f();
        if (temp > maxsize_1D)
            maxsize_1D = temp;
    }

    return maxsize_1D;
}

void smartArray::setPrintwidth_array (int w)
{
    width_array = w;
}

void smartArray::copy(const smartArray &other)
{
    list = new fraction[size = other.size];
    for(int i = 0; i < size; i++)
        list[i] = other.list[i];
}

void smartArray::nukem()
{
    for(int i = 0; i < size; i++)
        list[i] = fraction();
    delete [] list;
}

void smartArray::initialize()
{
    for(int i = 0; i < size; i++)
        list[i] = fraction();
}

void smartArray::swap(fraction &x,fraction &y)
{
    fraction temp = x;
    x = y;
    y = temp;
}

ostream& operator<<(ostream& out, const smartArray &array)
{
    stringstream ss;

    if(out == cout)
    {
        for(int i = 0; i < array.size; i++)
        {
            array.list[i].setPrintwidth_f(array.width_array);
            cout << setw(array.width_array) <<array.list[i];
            ss.clear();
        }
    }
    else
    {
        for(int i = 0; i < array.size;i++)
            out << "Data for [" <<i<< "]: " << array.list[i] <<endl;
    }
    return out;
}

istream& operator>>(istream& in, smartArray &array)
{
    stringstream ss;
    string line;

    array.nukem();
    if(in == cin)
    {
        if(array.size < 1)
            throw BAD_SIZE;

        array.list = new fraction[array.size];
        array.initialize();
        for(int i = 0; i < array.size; i++)
        {
            cout << "Data for [" << i <<"] : " ;
            getline(cin,line);
            if(line=="")
                break;
            ss<<line;
            ss>>array.list[i];
            ss.clear();
        }
    }
    else
    {
        array.list = new fraction[array.size];
        array.initialize();
        for(int i = 0; i < array.size; i++)
        {
            getline(in,line);
            ss<<line.substr(line.find(':')+1);
            ss>>array.list[i];
            ss.clear();
        }
    }
    return in;
}
