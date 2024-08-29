CC=gcc
CFLAGS=-I. -lm -g
DEPS = *.h
OBJ = Questions.o testCases.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

Lab1: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

#testCompile: AllTests.c testCases.c CuTest.c Question1.c
#	gcc -o testLab0 AllTests.c testCases.c CuTest.c Question1.c

test:	testLab1
testLab1:
# next line must start with a real TAB (ASCII 9)
	./run.sh

.PHONY: clean

clean:
	$(RM) *.o *.exe Lab1
