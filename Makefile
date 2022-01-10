CC=g++
BIN=bin
SRC=main.cpp tac.cpp mips32.cpp

splc: clean
	@mkdir -p $(BIN)
	$(CC) $(SRC) -o $(BIN)/$@
all: splc

clean:
	@rm -rf $(BIN)
.PHONY: clean
