##
## EPITECH PROJECT, 2020
## LibMy
## File description:
## Make libmy
##

CC			= gcc

SRC 		= $(wildcard src/*.c)
TEST_SRC 	= $(wildcard tests/*.c)

OBJS 		= $(SRC:.c=.o)

CFLAGS 		= -I./includes/
CFLAGS 		+= -W -Wall -Wextra

BIN_NAME	= bsq
TESTS_NAME	= unit_tests

all:
	echo "salut"

clean:
	echo "clean"

fclean: clean

re: fclean all