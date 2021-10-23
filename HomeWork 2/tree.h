#ifndef __tree__
#define __tree__

//------------------------------------------------------------------------------
// tree.h - содержит описание дерева
//------------------------------------------------------------------------------

#include <fstream>
#include <cstring>
#include "constants.h"
#include "rnd.h"
#include "plant.h"

//------------------------------------------------------------------------------
// дерево
class tree : public plant {
public:
    ~tree();
    // Ввод дерева из файла
    void In(std::ifstream &ifst) override;

    // Случайный ввод дерева
    void InRnd() override;

    // Вывод дерева в форматируемый поток
    void Out(std::ofstream &ofst) override;

    // Вычисление частного от деления числа гласных букв
    // в названии дерева на общую длину его названия
    double CountExpr() override;
private:
    long int age; // возраст дерева
    char name[MAX_NAME_SIZE]; // название дерева
};

#endif //__tree__