##
## Tom CATHELAIN, 2025
## solveur
## File description:
## Makefile
##

# BUILDING WITH STACK

PROJECT_NAME = sudokuSolver

INSTALL_DIR := $(shell stack path --local-install-root)/bin

EXECUTABLE = sudokuSolver

all: build

build:
	stack build
	cp $(INSTALL_DIR)/$(EXECUTABLE) .

clean:
	stack clean

fclean: clean
	rm -f $(EXECUTABLE)
	rm -f src/Main

re: fclean all

.PHONY: all build clean fclean re
