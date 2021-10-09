#ifndef __plant__
#define __plant__

//------------------------------------------------------------------------------
// plant.h - содержит описание растения(обобщающего типа данных)
//------------------------------------------------------------------------------

#include "tree.h"
#include "shrub.h"
#include "flower.h"

//------------------------------------------------------------------------------
// структура, обобщающая все имеющиеся растения
struct plant {
    // значения ключей для каждого растения
    enum key {
        TREE, 
        SHRUB, 
        FLOWER, 
        INVALID_PLANT_TYPE
    };
    key k; // ключ
    // используемые альтернативы
    union { // используем простейшую реализацию
        struct tree t;
        struct shrub s;
        struct flower f;
    };
};
// Ввод обобщенного растения из файла
plant *In(std::ifstream &ifst);

// Случайный ввод обобщенного растения
plant *InRnd();

// Вывод обобщенного растения в форматируемый поток
void Out(plant &pl, std::ofstream &ofst);

// Вычисление частного от деления числа гласных букв
// в названии растения на общую длину его названия
double CountExpr(plant &pl);

#endif //__plant__