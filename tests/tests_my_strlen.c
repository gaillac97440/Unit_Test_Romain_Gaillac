/*
** EPITECH PROJECT, 2024
** tests_my_strlen.c
** File description:
** my
*/
#include "../includes/my.h"

Test(my_strlen, give_good_num)
{
    int i = my_strlen("okok");

    cr_assert_eq(i, 4);
}