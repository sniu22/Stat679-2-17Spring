#!/bin/bash

if [[ $# -ne 2 ]]
then
    echo "usage: x <usernames> n"
    exit
fi

usernames=$1
n=$2

mkdir mess
cd mess

i=1
for username in $(cat ../$usernames)
do
    mkdir $username
    cat << HERE | sed 's/INCREMENT/'"$i"'/g' > $username/increment.cxx
#include <iostream>
using namespace std;

int main() {
    int n = 0;
    cin >> n;
    cout << n + INCREMENT << endl;
    return 0;
}
HERE
    g++ -Wall -g -o $username/x $username/increment.cxx
    i=$(($i+1))
done

command="echo $n"
for username in $(cat ../$usernames)
do
    command+=" | $username/x"
done
eval $command

rm */x
cd ..
