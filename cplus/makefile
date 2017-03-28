# This is a "makefile" for maintenance of Stack class code.
#
# format:  lines come in pairs, dependency statement first,
# then action statement:
#
# <target>:  <depend_1> ... <depend_n>
#	<action>
#
# Here <target> depends on <depend_1> ... <depend_n>; if any of these
# files is newer than <target>, then <action> will be executed.
# Note that there's a TAB before <action> (which is a poor design).


# The command "make" by itself updates the first target, so the
# following standard line causes "make" to update our exectuble, i.
# Without this line, we'd need to run the comand "make i".
all: i,p


Stack_int.o: Stack_int.h Stack_int.cxx
	g++ -Wall -g -c Stack_int.cxx # The "-c" option says "make a ".o" file."

postfix.o: Stack_int.h postfix.cxx
	g++ -Wall -g -c postfix.cxx

p: Stack_int.o postfix.o
	g++ -Wall -g -o p Stack_int.o postfix.o

Stack.o: Stack.h Stack.cxx
	g++ -Wall -g -c Stack.cxx # The "-c" option says "make a ".o" file."

infix.o: Stack.h infix.cxx
	g++ -Wall -g -c infix.cxx

i: Stack.o infix.o
	g++ -Wall -g -o i Stack.o infix.o

clean:
	rm -f *.o i p core
