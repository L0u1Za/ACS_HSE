#ifndef __shrub__
#define __shrub__

//------------------------------------------------------------------------------
// shrub.h - содержит описание кустарника
//------------------------------------------------------------------------------

#include <fstream>
#include <cstring>
#include "constants.h"
#include "rnd.h"
#include "plant.h"

//------------------------------------------------------------------------------
// кустарник
class shrub : public plant {
public:
    ~shrub();
    // Ввод кустаринка из файла
    void In(std::ifstream &ifst) override;

    // Случайный ввод кустарника
    void InRnd() override;

    // Вывод кустарника в форматируемый поток
    void Out(std::ofstream &ofst) override;

    // Вычисление частного от деления числа гласных букв
    // в названии кустарника на общую длину его названия
    double CountExpr() override;

private:
    enum month { // месяца года
        JANUARY,
        FEBRUARY,
        MARCH,
        APRIL,
        MAY,
        JUNE,
        JULY,
        AUGUST,
        SEPTEMBER,
        OCTOBER,
        NOVEMBER,
        DECEMBER,
        INVALID_MONTH_NUMBER
    };
    month flowering_month; // месяц цветения
    char name[MAX_NAME_SIZE]; // название кустарника

    static month GetMonth(const int &month_number);
};


#endif //__shrub__