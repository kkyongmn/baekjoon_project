# Makefile

CC = g++
CFLAGS = -std=c++11 -Wall -Wextra
LIBS = -lpng

SRC = main.cpp
OBJ = $(SRC:.cpp=.o)
EXECUTABLE = makeimage

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

%.o: %.cpp
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJ) $(EXECUTABLE)