##
## EPITECH PROJECT, 2024
## Workshop_Unit_Tests
## File description:
## Makefile
##

NAME	=	my_str_to_word_array

TEST_NAME	=	unit_tests

CC	=	gcc

RM	=	rm -f

CFLAGS	=	-W -Wall -Wextra -Werror -I./includes

SRC_MAIN	=	src/src_main/main.c

SRC_TESTS	=	tests/*.c

SRC	=	$(shell find src/ -name '*.c' -not -name 'main.c')

OBJ	=	$(SRC:.c=.o)

OBJ_MAIN	=	$(SRC_MAIN:.c=.o)

all:	$(NAME)

$(NAME):	$(OBJ) $(OBJ_MAIN)
	$(CC) -o $(NAME) $(OBJ) $(OBJ_MAIN) $(CFLAGS)

clean:
	$(RM) $(OBJ) $(OBJ_MAIN)

fclean:	clean
	$(RM) $(NAME)

re:	fclean all

tests_run:
	$(CC) -o $(TEST_NAME) $(SRC) $(SRC_TESTS) -l criterion --coverage $(CFLAGS)

tests_clean:
	$(RM) $(OBJ) $(OBJ_MAIN) *.gc*

tests_fclean: tests_clean
	$(RM) $(TEST_NAME)

tests_re: tests_fclean tests_run

.PHONY:	all clean fclean re tests_run tests_clean tests_fclean tests_re
