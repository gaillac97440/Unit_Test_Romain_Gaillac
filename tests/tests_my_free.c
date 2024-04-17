/*
** EPITECH PROJECT, 2024
** tests_my_free.c
** File description:
** my
*/
#include "../includes/my.h"

Test(my_free, is_free)
{
    char *name = "romain";

    my_free(name);
    cr_assert_null(name);
}