OBJS	= ./calcApp/TRPO_Calculator.o ./calcApp/TRPO_Functions.o ./test/main.o
OUT	= tost,pizza

OBJS0	= ./calcApp/TRPO_Calculator.o ./calcApp/TRPO_Functions.o
SOURCE0	= ./calcApp/TRPO_Calculator.cpp ./calcApp/TRPO_Functions.cpp
HEADER0	= ./calcApp/TRPO_Functions.h
OUT0	= tost

OBJS1	= ./test/main.o
SOURCE1	= ./test/main.cpp
HEADER1	= 
OUT1	= pizza

CC	 = g++
FLAGS	 = -g -c -Wall

all: tost pizza

tost: $(OBJS0)
	$(CC) -g $(OBJS0) -o $(OUT0)

pizza: $(OBJS1)
	$(CC) -g $(OBJS1) -o $(OUT1)

TRPO_Calculator.o: ./calcApp/TRPO_Calculator.cpp
	$(CC) $(FLAGS) ./calcApp/TRPO_Calculator.cpp 

TRPO_Functions.o: ./calcApp/TRPO_Functions.cpp
	$(CC) $(FLAGS) ./calcApp/TRPO_Functions.cpp 

main.o: ./test/main.cpp
	$(CC) $(FLAGS) ./test/main.cpp 


clean:
	rm -f $(OBJS) $(OUT)