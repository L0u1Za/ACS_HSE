#ifndef __plant__
#define __plant__

//------------------------------------------------------------------------------
// plant.h - содержит описание растения(обобщающего типа данных)
//------------------------------------------------------------------------------
#include <fstream>
#include <cstring>
#include "constants.h"
#include "rnd.h"

//------------------------------------------------------------------------------
// структура, обобщающая все имеющиеся растения
class plant {
public:
    virtual ~plant() = default;
    // Ввод обобщенного растения из файла
    virtual void In(std::ifstream &ifst) = 0;

    // Случайный ввод обобщенного растения
    virtual void InRnd() = 0;

    // Вывод обобщенного растения в форматируемый поток
    virtual void Out(std::ofstream &ofst) = 0;

    // Вычисление частного от деления числа гласных букв
    // в названии растения на общую длину его названия
    virtual double CountExpr() = 0;
};

#endif //__plant__