#include "Exception.h"

Exception::Exception ()
{
    message = "";
}


Exception::Exception (string out)
{
    message = out;
}

string Exception::get_message()
{
    return message;
}

void Exception::check_input(string message, int input)
{
    if (input < 0)
        throw Exception(message);
}

void Exception::check_denom(string message, bool input)
{
    if (input)
        throw Exception(message);
}
