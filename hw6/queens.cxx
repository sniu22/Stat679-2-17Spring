// Last name: Niu
// First name: Shuo
// NetID: sniu22@wisc.edu

// queens.cxx: runs stack-based backtracking search to solve n-queens
// problem.

#include <iostream>
#include "Stack.h"
#include <sstream>
#include <cstdlib>
#include <cstring>
using namespace std;

// ... You're welcome to add function prototypes of your own design
// here.  Put corresponding implementations below main().

// Runs n-queens search.  Prints queen configuration if there's a
// solution; otherwise prints "no solution exists".  If "debug" is
// true, also prints each configuration of queens encountered during
// the search.
void queens_search(int n, bool debug);
bool safe(Stack<int> &queen);
string print_queen(Stack<int> &queen, int n);

// I've written main() for you.
int main(int argc, char *argv[]) {
    int n_queens;
    bool debug = false;

    if (!(argc == 2 || argc == 3)) {
	cerr << "usage: " << argv[0]
	     << " <n_queens> [<optional 'd' means debug>]"
	     << endl;
	return 0;
    }

    n_queens = atoi(argv[1]);
    if (argc == 3) {
	debug = (argv[2][0] == 'd');
    }

    queens_search(n_queens, debug);

//    queens_search(2,true);


    return 0;
}


void queens_search(int n, bool debug) {
    string res = "";

    Stack<int> queen = Stack<int>();
    queen.push(0);
    bool a = false, b = false;
    int count = 0;
    while(!(a|b)){
        if(queen[queen.size()-1] >= n ){
            queen.pop();
            if(queen.size() > 0) queen.push(queen.pop()+1);
            a = (queen.size() == n) && safe(queen) && queen[queen.size()-1] < n;
            b = queen.size() == 0;
            continue;
        }
        if (debug)  {res += print_queen(queen,n);count++;}
        if (safe(queen)){
            queen.push(0);
        } else queen.push(queen.pop()+1);

        a = (queen.size() == n) && safe(queen) && queen[queen.size()-1] < n;
        b = queen.size() == 0;
    }

    res += print_queen(queen,n);
    if (queen.size() == 0) res += "\nNo Solution.\n" ;
    cout << res << endl;

}

bool safe(Stack<int> &queen){
    if (queen.size() == 0) return true;
    int row = queen.size() - 1;
    for (int i = 0; i < row ; i++) {
        if (queen[i] == queen[row]) return false;
        if (queen[i] == (queen[row] - (row-i))) return false;
        if (queen[i] == (queen[row] + (row-i))) return false;
    }
    return true;
}

string print_queen(Stack<int> &queen, int n){

    string res_out = "\nstack: ";
    for (int k = 0; k < queen.size(); ++k) {
        stringstream ss;
        ss << queen[k];
        res_out += ss.str() + " ";
    }
    res_out += "\n";
    res_out += "---\nboard:\n";
    for (int i = 0; i < queen.size(); ++i) {
        for (int j = 0; j < n; ++j) {
            if (queen[i] == j) res_out += " Q |";
            else res_out += "   |";
        }
        res_out +="\n";
    }
    for (int i = queen.size(); i < n; ++i) {
        for (int j = 0; j < n; ++j) {
            res_out += "   |";
        }
        res_out +="\n";
    }

    return res_out;

}