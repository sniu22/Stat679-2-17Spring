//
// Created by Shuo Niu
//

#include <iostream>
#include "Stack_int.h"

using namespace std;

int main(){
    Stack_int data;
    char input;
    int a,b;
    while((input = cin.get()) != '\n'){

        int value = input - '0';
        if (value <= 9 && value >= 0){
            data.push(value);
            continue;
        }
        switch (input){
            case '+':
                a = data.pop();
                b = data.pop();
                data.push(a + b);
                break;

            case '-':
                a = data.pop();
                b = data.pop();
                cout << a << "  " << b << endl;
                data.push(b - a);
                break;
            case '*':
                a = data.pop();
                b = data.pop();
                data.push(a * b);
                break;
            case '/':
                a = data.pop();
                b = data.pop();
                data.push(b / a);
                break;
        }

    }
    cout<< data.pop()<< endl;

    return 0;
}