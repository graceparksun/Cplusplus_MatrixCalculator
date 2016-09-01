# Cplusplus_MatrixCalculator
Last update: Oct 14, 2014
Language: C++
This program will, from the command line, accept a varying amount of parameters. 
It is a matrix calculator that can add, subtract, multiply, and perform Gaussian Elimination. 
The matrix can have integer, decimal, and fraction.

Detail:
Matrix Mathematics via the Command Line
This program will, from the command line, accept a varying amount of parameters. 

1 parameter: (besides the name of the program (matrix)) 
program will either create a new matrix file or open the file for editing/display. 
Matrix files all end with .mat, but the user does not have to enter the .mat as part of the parameter 
(ex. matrix one would open the one.mat for editing/display if it exists, or create a new matrix file if it does not exist)

2 parameters: program will error out and display a helpful message on how to use the program.

3 parameters: program will perform the operation desired upon the two existing matrix files and display the result on the screen in proper matrix format. 
(ex, matrix one multiply two will multiply matrix one by matrix two)

4 parameters: the program will perform the operation desired upon the two existing matrix files and display the result on the screen in proper matrix format as well as create a new matrix file with the resultant matrix within it. 
(ex. matrix one add two three will display the result on the screen as well as make a new matrix file called three.mat).
 If the file name exists, the program must prompt the user to see if they wish to overwrite it or create a new, different named, file.

5 parameters: program will perform the operation desired upon the two existing matrix files and display the result on the screen in proper matrix format as well as create a new matrix file with the resultant matrix within it; regardless of whether or not the file already exists. 
(ex. matrix one add two three /f will display the result on the screen as well as make a new matrix file called three.mat).

Second parameter can only be the words add or multiply. Similarly, the fifth parameter can only be a /f. But, if the user enters matrix /h or matrix /? the program will display a message on how to use the program as well as the requirements for adding and multiplying matrices. 

Unlike displaying the matrix to the screen, the matrix file must have the dimensions of the matrix as its first two entries to be read. The remaining information about the matrix can either be stored one entry per line or in the same format as what was displayed on the screen.

Matrix files can have within them either integers, fractions, or mixed numbers. Displayed values must be in proper format 
(ex. 3 0/1 would display as 3, 7/3 would display as 2 1/3, and 0 1/3 would display as 1/3)

As in matrix files can hold a matrix of virtually any dimension, your program must dynamically create, and destroy, two-dimensional "smart arrays" of various sizes.

Hint: The following article has some tips on matrix mathematics.   http://en.wikipedia.org/wiki/Matrix_(mathematics) (Links to an external site.)


Extra Credit: (50 points)
Add the capability that if two parameters are given then the program will use Gaussian Elimination to solve the system of simultaneous linear equations represented in the matrix. (ex. matrix one solve will then solve the system of simultaneous linear equations and display the results on the screen in the form x = <value>, y = <value> and so forth).
Hint: http://en.wikipedia.org/wiki/Gaussian_elimination (Links to an external site.)


