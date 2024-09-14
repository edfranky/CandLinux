# Variable definitions
CC = gcc                # Compiler to use
CFLAGS = -Wall -g       # Compiler flags: -Wall for all warnings, -g for debugging information
OBJ = main.o utils.o    # Object files
TARGET = program        # Name of the final executable

# Default target
all: $(TARGET)          # The default target, which depends on $(TARGET)

# Linking target
$(TARGET): $(OBJ)      # Target executable depends on object files
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)  # Link object files to create the executable

# Compilation targets
main.o: main.c utils.h # Object file main.o depends on main.c and utils.h
	$(CC) $(CFLAGS) -c main.c  # Compile main.c to main.o

utils.o: utils.c utils.h # Object file utils.o depends on utils.c and utils.h
	$(CC) $(CFLAGS) -c utils.c  # Compile utils.c to utils.o

# Clean target
clean:                  # Target to remove generated files
	rm -f $(OBJ) $(TARGET) # Remove object files and the executable

