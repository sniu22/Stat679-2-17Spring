// Stack.cxx: implementation file for Stack class declared in Stack.h.

#include <cassert>
#include <cstdlib> // for NULL
#include "Stack_int.h"

using namespace std;

Stack_int::Stack_int() {
    head = NULL;
}

Stack_int::~Stack_int() {
    while (head) { // delete list
        Node *p = head;
        head = head->next;
        delete p;
    }
}

void Stack_int::push(int c) {
    Node *p = new Node;
    p->data = c;
    p->next = head;
    head = p;
}

int Stack_int::pop() {
    Node *p = head;
    assert(!empty());
    int c = head->data;
    head = head->next;
    delete p;
    return c;
}

bool Stack_int::empty() const {
    return head == 0;
}
