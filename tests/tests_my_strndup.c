/*
** EPITECH PROJECT, 2024
** tests_my_strndup.c
** File description:
** my
*/
#include "../includes/my.h"

Test(my_strndup, is_dup)
{
    char *i = my_strndup("so", 1);
    cr_assert_str_eq(i, "s");
}