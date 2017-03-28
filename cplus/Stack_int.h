// Stack.h:  header file for Stack_int class.

#ifndef STACK_int_H // prevent double-inclusion of this file
#define STACK_int_H


struct Node {
    int data;  // data in this node
    Node *next; // pointer to next node
};


class Stack_int {
public:

    Stack_int(); // Constructor to create empty stack.

    ~Stack_int(); // Destructor to destroy stack.

    void push(int c); // Insert c at top of stack.

    int pop(); // Remove top item and return it (crash if empty).

    bool empty() const; // Return true if stack is empty.

private:

    Node *head; // pointer to head of linked list
};

#endif
