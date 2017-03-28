//
// Created by Sololament on 2017/3/27.
//

#include <iostream>
#include <fstream>
#include <queue>
#include <map>
#include <cassert>

using namespace std;


struct Tree {
    char data;
    int count; // sum of counts of char's in this subtree
    Tree *left;
    Tree *right;
};

struct Tree_priority {
    bool operator()(const Tree *x, const Tree *y) {
        return x->count > y->count;
    }
};


int main(int argc, char *argv[]){
    ifstream ifs;             // Declare an input file stream variable, ifs.
    ifs.open("../data/helloIn.txt"); // Open ifs to read from the file bitsIn.txt.
    //assert(ifs.good());       // Stop program if open() failed.
    priority_queue<Tree *, vector<Tree *>, Tree_priority> counts ;
    map <char,int> items;
    map<char, int>::iterator iter;

    int word;
    while ((word = ifs.get()) && !ifs.eof()){
        char words = word;
        cout << words << endl;
        if (items.find(words) == items.end()) items.insert(pair<char, int>(words,1));
        else items[words] += 1;
    }
    ifs.close();

    // Iterate through the dictionary to generate trees
    cout << "counts results" << endl;
    for(iter = items.begin(); iter != items.end(); iter++){
        cout << iter->first << " : " << iter->second << endl;
        Tree newtree = {iter->first,iter->second,NULL,NULL};
        counts.push(& newtree);
    }

    // merge the smaller tree

    while (!counts.empty()){
        Tree *tt = counts.top();
        cout << tt->data << endl;
        cout << tt->count << endl;

        counts.pop();
    }


    return 0;
}



