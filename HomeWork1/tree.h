#ifndef __tree__
#define __tree__

//------------------------------------------------------------------------------
// tree.h - содержит описание дерева
//------------------------------------------------------------------------------

#include <fstream>
#include <cstring>
#include "constants.h"
#include "rnd.h"

//------------------------------------------------------------------------------
// дерево
struct tree {
    long int age; // возраст дерева
    char name[MAX_NAME_SIZE]; // название дерева
};

// Ввод параметров дерева из файла
void In(tree &t, std::ifstream &ifst);

// Случайный ввод параметров дерева
void InRnd(tree &t);

// Вывод параметров дерева в форматируемый поток
void Out(tree &t, std::ofstream &ofst);

// Вычисление частного от деления числа гласных букв
// в названии дерева на общую длину его названия
double CountExpr(tree &t);

#endif //__tree__