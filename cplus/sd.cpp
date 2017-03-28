// Shuo Niu : sniu22@wisc.edu

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
    double sdv = sd(n,data);
    cout << "The standard deviation is " << sdv << endl;
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

    return sqrt(sum/(n - 1));
}