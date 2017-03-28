# "nq" means "n-queens"; "ts" means "test stack"
all: nq ts



# ... your makefile code to make an executable "ts" (for "test stack")

nq: Stack.h Stack.template testStack.cxx
	g++ -Wall -g -o nq queens.cxx


# ... your makefile code to make an executable "nq" (for "n queens")

ts: Stack.h Stack.template testStack.cxx
	g++ -Wall -g -o ts testStack.cxx

clean:
	rm -f *.o nq ts
