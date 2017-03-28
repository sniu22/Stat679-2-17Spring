// Write a program called "sd.cxx" that computes the sample standard
// deviation of a set of data.
//
// Your program should include three functions:
//
// - mean(), which takes two parameters:
//   - n, an integer, the length of the array being passed
//   - x, an array of doubles (as a pointer), the data
//
// - sd(), which takes two parameters:
//   - n, an integer, the length of the array being passed
//   - x, an array of doubles (as a pointer), the data
//   sd() should call mean() as part of its calculation
//
// - main(), which should:
//   - prompt the user for the number of points
//   - read in the number of points and then the points themselves
//   - use your sd() function to find the standard deviation
//


// Note: If the user types 5 and then 1 2 3 4 5, you should get a
// standard deviation of about 1.58.
#include <cstdlib>  // for random()
#include <iostream> // for cin, cout
#include <cmath>    // for sqrt()
#include <vector>

using namespace std;


double mean(int n, double *values);
double sd(int n, double *values);


int main() {
    cout << "Please Enter the Number of Points" << endl;
    int n = 0;

    cin >> n ;

    cout << "Please Enter Each Point" << endl;

    double *data = new double[n];

    for (int i = 0; i < n; ++i) {
        cin >> data[i] ;
    }

    double sd = sd(n,data);
    cout << "The standard deviation is " << sd << endl;
    return 0;

}

double mean(int n, double *values){
    double sum = 0;
    for (int i = 0; i < n; ++i) {
        sum += values[i];
    }

    return sum/n;
}

double sd(int n, double *values){
    double average = mean(n,values), sum = 0;

    for (int i = 0; i < n; ++i) {
        sum += pow(values[i] - average,2);
    }

    return sum/n;
}