/*
** EPITECH PROJECT, 2024
** tests_my_count_words.c
** File description:
** my
*/
#include "../includes/my.h"

Test(my_count_words, good_number)
{
    int i = my_count_words("romain salut", " ");
    cr_assert_eq(i, 1);
}