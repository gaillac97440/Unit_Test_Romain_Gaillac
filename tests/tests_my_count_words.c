/*
** EPITECH PROJECT, 2024
** tests_my_count_words.c
** File description:
** my
*/
#include "../includes/my.h"

Test(my_count_words, good_number)
{
    char *name = "romain";

    my_count_words(name, name);
    cr_assert_eq(name, 1);
}