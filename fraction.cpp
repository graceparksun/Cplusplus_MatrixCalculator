#include "fraction.h"

fraction::fraction()//Constructor
{
    whole = 0;
    num = 0;
    denom = 1;
}

fraction::fraction(int w, int n, int d) //Constructor with 3 parameters
{
    if (denom<0)
    {
        denom = -1*denom;
        num = -1*num;
    }
    num = d*w +n;
    denom = d;
    reduce();
    whole = num/denom;
    num = num % denom;
}

fraction::~fraction() //Destructor
{
    whole = 0;
    num = 0;
    denom = 0;
}

fraction::fraction(const fraction &other)
{
    copy(other);
}

fraction& fraction::operator=(const fraction &other)
{
    if(this != &other)
    {
        copy(other);
    }
    return *this;
}

fraction& fraction::operator+=(const fraction &other)
{
    fraction other_mod = other;
    other_mod.improper();

    num = other_mod.denom*num + denom*other_mod.num;
    denom *= other_mod.denom;
    reduce();
    proper();
    return *this;
}

fraction& fraction::operator-=(const fraction &other)
{
    fraction other_mod = other;
    other_mod.improper();

    num = other_mod.denom*num - denom*other_mod.num;
    denom *= other_mod.denom;
    reduce();
    improper();
    return *this;
}

fraction& fraction::operator*=(const fraction &other)
{
    fraction other_mod = other;
    other_mod.improper();

   num= num*other_mod.num;
   denom *= other_mod.denom;
   reduce();
   proper();
   return *this;
}

fraction& fraction::operator/=(const fraction &other)
{
    fraction other_mod = other;
    other_mod.improper();

    num = num*other_mod.denom;
    denom = denom *other_mod.num;
    reduce();
    proper();
    return *this;
}

void fraction::setVal(int w, int n, int d) //Mutator
{
   whole = w;
   num = n;
   denom = d;
   reduce();
}

void fraction::getVal(int &w, int &n, int &d)//Accessor
{
    w = whole;
    n = num;
    d = denom;
}

void fraction::display()
{
    cout<< whole << " " <<num<<"/"<<denom;
}

int fraction::gcd(int p, int q)
{
    int r;
    p = abs(p);
    q = abs(q);
    while((r = p%q))
    {
        p = q;
        q = r;
    }
    return q;
}

void fraction::copy(const fraction &other)
{
    whole = other.whole;
    num = other.num;
    denom = other.denom;
}

void fraction::reduce()
{
    int div = gcd(num, denom);
    num /= div;
    denom /= div;
}

void fraction::improper()
{
    if (whole >= 0)
        num = whole*denom + num;
    else
        num = whole*denom - num;
    whole = 0;
}

void fraction::proper()
{
    whole = num/denom;
    if (whole != 0)
    {
        if (num >= 0)
            num = num%denom;
        else
            num = -1*(num%denom);
    }
}

void fraction::setPrintwidth_f (int w)
{
    width = w;
}

fraction operator+(const fraction &x, const fraction &y)
{
    fraction x_mod = x, y_mod = y, result;
    x_mod.improper();
    y_mod.improper();

    result.num = x_mod.num *y_mod.denom + x_mod.denom *y_mod.num;
    result.denom = x_mod.denom * y_mod.denom;
    result.reduce();
    result.proper();
    return result;
}

fraction operator-(const fraction &x, const fraction &y)
{
    fraction x_mod = x, y_mod = y, result;
    x_mod.improper();
    y_mod.improper();

    result.num = x_mod.num *y_mod.denom - x_mod.denom *y_mod.num;
    result.denom = x_mod.denom * y_mod.denom;
    result.reduce();
    result.proper();
    return result;
}

fraction operator*(const fraction &x, const fraction &y)
{
    fraction x_mod = x, y_mod = y, result;
    x_mod.improper();
    y_mod.improper();

    result.num = x_mod.num*y_mod.num;
    result.denom = x_mod.denom * y_mod.denom;
    result.reduce();
    result.proper();
    return result;
}


fraction operator/(const fraction &x, const fraction &y)
{
    fraction x_mod = x, y_mod = y, result;
    x_mod.improper();
    y_mod.improper();

    result.num = x_mod.num *y_mod.denom;
    result.denom = x_mod.denom * y_mod.num;
    result.negative_denom();
    result.reduce();
    result.proper();
    return result;
}


ostream& operator<<(ostream &out, const fraction &f)
{
    string output = "", space = " ";
    stringstream ss;
    string whole = "", NumDenom = "";

    if (f.denom != 1)
    {
        if(f.whole ==0 && f.num == 0)
        {
            if (f.denom != 0)
                output = "0";
            else
                output= "undefined" ;
        }
        else
        {
            if(f.whole != 0)
            {
                ss << f.whole;
                ss >> whole;
                output = whole + space;
                ss.clear();
            }
            if(f.num != 0)
            {
                ss<<f.num<<"/"<<f.denom;
                ss>> NumDenom;
                output = output + NumDenom;
                ss.clear();
            }
        }
    }
    else        //if denominator is 1
    {
        ss << f.whole+f.num;
        ss >> output;
    }

        out << output;
    return out;
}


int fraction::findMaxwidth_f()
{
    string output = "";
    stringstream ss;
    string whole_s = "", NumDenom = "";
    int size=0;

    if (denom != 1)
    {
        if(whole ==0 && num == 0)
        {
            if (denom != 0)
                size = 1;
            else
                size = 9 ;
        }
        else
        {
            if(whole != 0)
            {
                ss << whole;
                ss >> whole_s;
                size = whole_s.length() + 1;
                ss.clear();
            }
            if(num != 0)
            {
                ss<<num<<"/"<<denom;
                ss>> NumDenom;
                size = size + NumDenom.length();
                ss.clear();
            }
        }
    }
    else        //if denominator is 1
    {
        ss << whole+num;
        ss >> output;
        size = output.length();
    }

    return size+2;
}

istream& operator>>(istream &in, fraction &f)
{
        int w = 0, n = 0, d = 1;
        char temp, temp2;

        in>>w;
        in.get(temp);
        if (temp == ' ')
        {
            in.get(temp2);
            if (isdigit(temp2) ==  true || temp2 == '-')
            {
                in.putback(temp2);
                in>>n;
                in.get(temp2);
                in>>d;
                if (d == 0)
                {
                    cout << "Input error: denominator zero."<<endl;
                    exit(0);
                }
            }
            else
            {
                in.putback(temp2);
                n=0;
                d=1;
            }
        }
        else
            if (temp == '/')
            {
                n = w;
                w = 0;
                in >> d;
                if (d == 0)
                {
                    cout << "Input error: denominator zero."<<endl;
                    exit(0);
                }
            }

        f.whole = w;
        f.num = n;
        f.denom = d;
/*

*/
        f.negative_denom();
        f.improper();
        f.reduce();
        f.proper();

    return in;
}


void fraction::negative_denom ()
{
    if(denom < 0)
    {
        num = -1*num;
        denom = -1*denom;
    }
}

bool operator==(const fraction &x, const fraction &y)
{
    fraction x_mod=x, y_mod=y;
    x_mod.improper();
    x_mod.reduce();
    y_mod.improper();
    y_mod.reduce();
    return x_mod.num*y_mod.denom == x_mod.denom*y_mod.num;
}

bool operator!=(const fraction &x, const fraction &y)
{
    return !(x == y);
}

bool operator>=(const fraction &x, const fraction &y)
{
    fraction x_mod=x, y_mod=y;
    x_mod.improper();
    x_mod.reduce();
    y_mod.improper();
    y_mod.reduce();
    return x_mod.num*y_mod.denom >= x_mod.denom*y_mod.num;
}

bool operator<=(const fraction &x, const fraction &y)
{
    fraction x_mod=x, y_mod=y;
    x_mod.improper();
    x_mod.reduce();
    y_mod.improper();
    y_mod.reduce();
    return x_mod.num*y_mod.denom <= x_mod.denom*y_mod.num;
}

bool operator<(const fraction &x, const fraction &y)
{
    fraction x_mod=x, y_mod=y;
    x_mod.improper();
    x_mod.reduce();
    y_mod.improper();
    y_mod.reduce();
    return x_mod.num*y_mod.denom < x_mod.denom*y_mod.num;
}

bool operator>(const fraction &x, const fraction &y)
{
    fraction x_mod=x, y_mod=y;
    x_mod.improper();
    x_mod.reduce();
    y_mod.improper();
    y_mod.reduce();
    return x_mod.num*y_mod.denom > x_mod.denom*y_mod.num;
}
