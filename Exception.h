#ifndef EXCEPTION_H
#define EXCEPTION_H
#include <string>

using namespace std;

class Exception
{
public:
    Exception();
    Exception(string out);
    void check_input(string message, int input);
    void check_denom(string message, bool input);
    string get_message();
private:
    string message;
};

#endif // EXCEPTION_H
