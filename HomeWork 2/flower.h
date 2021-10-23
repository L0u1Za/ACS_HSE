#ifndef __flower__
#define __flower__

//------------------------------------------------------------------------------
// flower.h - содержит описание цветка
//------------------------------------------------------------------------------

#include <fstream>
#include <cstring>
#include "constants.h"
#include "rnd.h"
#include "plant.h"

//------------------------------------------------------------------------------
// цветок
class flower : public plant {
public:
    ~flower();
    // значения ключей для каждого цветка
    // Ввод обобщенного растения из файла
    void In(std::ifstream &ifst) override;

    // Случайный ввод цветка
    void InRnd() override;

    // Вывод цветка в форматируемый поток
    void Out(std::ofstream &ofst) override;

    // Вычисление частного от деления числа гласных букв
    // в названии цветка на общую длину его названия
    double CountExpr() override;
private:
    enum flower_type { // типы цветков
        DOMESTIC, GARDEN, WILD, INVALID_PLACE_NUMBER
    };
    flower_type flow_type; // тип цветка
    char name[MAX_NAME_SIZE]; // название цветка
};

#endif //__flower__