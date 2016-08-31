//mixed numbers
//matrix multiplication
//setw for output
//extra credit


#include <iostream>
#include <sstream>
#include <string>
#include <cstdlib>
#include <cctype> //for toupper
#include "fraction.h"
#include "smartarray.h"
#include "smartarray2d.h"



using namespace std;



void read_input (int argc, char **argv, string &infile1, string &op, string &infile2, string &outfile, string& command);
string mat_exist (string filename);
void processCmdLine (int argc, ifstream &in, ofstream &out, string infile1, string op, string infile2, string outfile, string command);
void file_create_open (ifstream &in, ofstream &out, string openfile, char which, smartArray2D &matrix);
void help_statement();
smartArray2D operation (smartArray2D matrix1, smartArray2D matrix2, string op);
void edit_matrix(ifstream &in, ofstream &out, string openfile, smartArray2D &matrix);
void Choice_file (ifstream &in, ofstream &out, string openfile, smartArray2D matrix);
void Create_matrix(ofstream &out, smartArray2D &matrix);
void solve (smartArray2D matrix);
void help_message();


int main(int argc, char **argv)
{
    ofstream out;
    ifstream in;
    string infile1, infile2, outfile, command, op;

    read_input (argc, argv, infile1, op, infile2, outfile, command);
    processCmdLine (argc, in, out, infile1, op, infile2, outfile, command);

    in.close();
    out.close();
    cout << "Program End.\n"<<endl;

    return 0;
}



void read_input (int argc, char **argv, string &infile1, string &op, string &infile2, string &outfile, string& command)
{
    string input[6];

    for (int i=0; i<6; i++)
        input[i] = " ";
    for (int j=0; j<argc; j++)
        input[j] = argv[j];

    infile1 = input[1];
    op = input[2];
    infile2 = input[3];
    outfile = input[4];
    command = input[5];

    if(infile1 == "/h" || infile1 == "/?")
    {
        help_message();
        exit(0);
    }


    if(op != "add" && op!= "multiply" && op!= " " && op!="solve")
    {
        cout << "Wrong input for operator. Please try again." << endl
             << "For help messages, insert matrix /h or matrix /?" <<endl;
        exit(0);
    }
}


void processCmdLine (int argc, ifstream &in, ofstream &out, string infile1, string op, string infile2, string outfile, string command)
{
    smartArray2D matrix1, matrix2, matrix3;
    char ans;
    fraction x,y;

    switch(argc)
    {
        case 2: infile1 = mat_exist(infile1);
                file_create_open (in, out, infile1, 'i',matrix1);
                cout << "Do you want to edit the matrix?" << endl
                     << "Enter Y for yes, N for no." <<endl;
                cin >> ans;
                if (ans == 'Y' || ans == 'y')
                    edit_matrix(in, out, infile1, matrix1);
                break;
        case 3: if (op == "solve")
                {
                    infile1 = mat_exist(infile1);
                    file_create_open (in, out, infile1, 'i',matrix1);
                    solve(matrix1);
                }
                else
                    help_statement();
                break;
        case 4: infile1 = mat_exist(infile1);
                infile2 = mat_exist(infile2);
                file_create_open (in, out, infile1, 'i', matrix1);
                file_create_open (in, out, infile2, 'i', matrix2);
                matrix3 = operation (matrix1, matrix2, op);
                break;
        case 5: infile1 = mat_exist(infile1);
                infile2 = mat_exist(infile2);
                outfile = mat_exist(outfile);
                file_create_open (in, out, infile1, 'i', matrix1);
                file_create_open (in, out, infile2, 'i', matrix2);
                matrix3 = operation (matrix1, matrix2, op);
                file_create_open (in, out, outfile, 'a', matrix3);
                break;
        case 6: infile1 = mat_exist(infile1);
                infile2 = mat_exist(infile2);
                outfile = mat_exist(outfile);
                file_create_open (in, out, infile1, 'i', matrix1);
                file_create_open (in, out, infile2, 'i', matrix2);
                matrix3 = operation (matrix1, matrix2, op);
                file_create_open (in, out, outfile, 'o', matrix3);
                break;
        default: cout << "Wrong number of arguments, try again"<<endl
                      << "For help message, insert matrix /h or matrix /?" <<endl;
                break;

    }
}


void file_create_open (ifstream &in, ofstream &out, string openfile, char which, smartArray2D &matrix)
{
    ifstream test;

    test.open(openfile.c_str());
    if(test.fail())
    {
        test.clear();
        test.close();
        cout<<"File " <<openfile << " does not exist."<<endl;
        out.open(openfile.c_str());
        if(out.fail())
            cout << "Failed: File could not be created." << endl;
        else
        {
            cout << "File " << openfile << " created." << endl;
            if (which == 'i')
                Create_matrix(out, matrix);
            else if (which == 'a')
            {
                out << matrix;
                out.clear();
                out.close();
            }
        }
    }
    else
    {
        test.close();
        test.clear();
        cout << "File " <<openfile << " already exists." <<endl;
        if (which == 'a')
            Choice_file (in, out, openfile, matrix);
    }

    switch (which)
    {
        case 'i':
            in.open(openfile.c_str());
            cout << "This is what is in " <<openfile <<endl;
            in>> matrix;
            cout << matrix <<endl;
            in.close();
            in.clear();
            break;
        case 'o':
            out.open(openfile.c_str());
            out << matrix;
            cout << "Matrix successfully put in "<<openfile << endl
                 << "This is your matrix: " << endl;
            cout << matrix <<endl;
            out.clear();
            break;
        case 'a':
            cout << "";
            break;
        default:
            cout<< "wrong"<<endl;
    }
}

/*
string mat_exist (string filename)
{
    string txt = ".txt";

    if (filename.find(".txt") == string::npos)
        filename += txt;
    else
        filename = filename;

    return filename;
}
*/


string mat_exist (string filename)
{
    try
    {
        if (filename.find(".mat") == string::npos)
            throw filename;

        return filename;
    }
    catch(string filename)
    {
        string mat = ".mat";
        filename=filename+mat;

        return filename;
    }
}



smartArray2D operation (smartArray2D matrix1, smartArray2D matrix2, string op)
{
    smartArray2D matrix3;

    if (op == "add")
        matrix3 = matrix1 + matrix2;

    else if (op == "multiply")
        matrix3 = matrix1 * matrix2;
    cout << "matrix3 is: " << endl << matrix3 << endl;
    return matrix3;
}


void edit_matrix(ifstream &in, ofstream &out, string openfile, smartArray2D &matrix)
{
    char ans;
    int row, col;
    fraction data;

    do
    {
        in.open(openfile.c_str());
        in >> matrix;
        in.close();
        in.clear();
        cout << "Which row: ";
        cin >> row;
        cout <<"Which col: ";
        cin >> col;
        cout << "Enter your new data: " ;
        cin >> data;
        matrix.edit_data(matrix, row-1, col-1, data);
        cout << "Your modified matrix is:" <<endl << matrix << endl;
        out.open(openfile.c_str());
        out << matrix;
        out.close();
        out.clear();
        cout << "Do you want to change anything else? " <<endl
             << "Y for yes, N for no." <<endl;
        cin >> ans;
    }while (ans == 'y' || ans == 'Y');

    cout << "Your matrix was successfuly modified. " << endl;
}


void Choice_file (ifstream &in, ofstream &out, string openfile, smartArray2D matrix)
{
    ifstream test;
    bool wrong_choice=false;
    string newfile;

    do
    {
        char ans;
        cout << "Please choose one of the following: "<< endl
             << "A. Overwrite" <<endl
             << "B. Creat new file" <<endl << "ans: ";
        cin >> ans;
        ans = toupper(ans);
        if (ans == 'B')
        {
            bool file_exist = false;
            do
            {
                cout << "Please insert the name of the new file: ";
                cin >> newfile;
                newfile = mat_exist(newfile);
                test.open(newfile.c_str());
                if (test.fail())
                    file_exist = false;
                else
                {
                    test.close();
                    file_exist = true;
                    cout << "File "<<newfile << "already exists." <<endl;
                }
                test.clear();
            } while(file_exist == true);
            wrong_choice = false;
            out.open(newfile.c_str());
            out << matrix;
            out.close();
            out.clear();
            cout << "New file with matrix3 was successfully created." << endl;
        }
        else if (ans == 'A')
        {
            out.open(openfile.c_str());
            out<<matrix;
            out.close();
            out.clear();
            cout << "Overwrite was successful. "<<endl;
            wrong_choice = false;
        }
        else
        {
            cout << "Wrong choice. ";
            wrong_choice = true;
        }
    }while (wrong_choice == true);
}


void Create_matrix(ofstream &out, smartArray2D &matrix)
{
    cout << "Let's create a new matrix!" <<endl;
    cin >> matrix;
    out<< matrix;
    cout << endl << "Matrix successfully created!"<< endl;
    out.close();
    out.clear();
}


void solve (smartArray2D matrix)
{
    matrix.Gaussian_Elimination();
    cout << "Matrix rref is: " << endl << matrix << endl;
}


void help_statement()
{
    cout << endl <<"HELP MESSAGE: " <<endl
         << "When adding to matrices A and B, matrix A and matrix B have to be same size." << endl
         << "When multiplying two matrices C and D, the number of column of matrix C " << endl
         << "has to be equal to the number of row in matrix D." << endl
         << "For more information, insert matrix /h or matrix /?\n" <<endl;
}


void help_message ()
{
    cout << endl << "HELP MESSAGE: "  << endl
         << "The order of entry should be:" << endl
         << "\"./matrix  infile_name1  op(add/multiply)  infile_name2  outfile_name  /f\"" <<endl
         << "Basic matrix operation rules:" <<endl
         << "- Addition of two matrices is defined if and only if the number of rows and columns" <<endl
         << "  of the first matrix is same as the number of rows and columns of the second matrix." <<endl
         << "- Multiplication of two matrices is defined if and only if the number of columns of" <<endl
         << "  the first matrix is the same as the number of rows of the second matrix" << endl
         << "If you wish to display this help message again later, insert matrix /h or matrix /? \n" <<endl;
}
