CC = clang
CFLAGS = -Wall -Wextra -pedantic -std=c99
RELEASE_FLAGS = -march=native -O3
DEBUG_FLAGS = -g3 -O0

TARGET = tape

run: $(TARGET)
	./$(TARGET)

$(TARGET): src/tape.c
	clang src/tape.c $(CFLAGS) $(RELEASE_FLAGS) -o $(TARGET)

debug: src/tape.c
	clang src/tape.c $(CFLAGS) $(DEBUG_FLAGS) -o $(TARGET)

clean:
	rm tape
