//------------------------------------------------------------------------------
// flower.cpp - содержит функции обработки цветка
//------------------------------------------------------------------------------

#include "flower.h"

//------------------------------------------------------------------------------
// Ввод параметров цветка из потока
void flower::In(std::ifstream &ifst) {
    int place;
    ifst >> place >> this->name;
    switch (place) {
        case 1:
            this->flow_type = flower::flower_type::DOMESTIC;
            break;
        case 2:
            this->flow_type = flower::flower_type::GARDEN;
            break;
        case 3:
            this->flow_type = flower::flower_type::WILD;
            break;
        default:
            this->flow_type = flower::flower_type::INVALID_PLACE_NUMBER;
    }
}

// Случайный ввод параметров цветка
void flower::InRnd() {
    switch (Random() % 3) {
        case 0:
            this->flow_type = flower::flower_type::DOMESTIC;
            break;
        case 1:
            this->flow_type = flower::flower_type::GARDEN;
            break;
        case 2:
            this->flow_type = flower::flower_type::WILD;
            break;
        default:
            this->flow_type = flower::flower_type::INVALID_PLACE_NUMBER;
    }
    for (size_t i = 0; i < MAX_NAME_SIZE; ++i) {
        this->name[i] = static_cast<char>('a' + Random());
    }
    this->name[MAX_NAME_SIZE - 1] = '\0';
}

//------------------------------------------------------------------------------
// Вывод параметров цветка в поток
void flower::Out(std::ofstream &ofst) {
    ofst << "It is flower: flower type = ";
    switch (this->flow_type) {
        case flower::DOMESTIC:
            ofst << "domestic";
            break;
        case flower::GARDEN:
            ofst << "garden";
            break;
        case flower::WILD:
            ofst << "wild";
            break;
        case flower::INVALID_PLACE_NUMBER:
            ofst << "Invalid place number!";
    }
    ofst << ", name = " << this->name
         << ". CountExpr = " << this->CountExpr() << "\n";
}

//------------------------------------------------------------------------------
// Вычисление частного от деления числа гласных букв
// в названии цветка на общую длину его названия

double flower::CountExpr() {
    // переменная для подсчёта гласных в названии цветка
    size_t number_of_vowels = 0;
    for (auto it: this->name) {
        char current_symbol = tolower(it);
        if (current_symbol == 'a' || current_symbol == 'e' || current_symbol == 'i' ||
            current_symbol == 'o' || current_symbol == 'u' || current_symbol == 'y') {
            ++number_of_vowels;
        }
    }
    return (double)number_of_vowels / strlen(this->name);
}
flower::~flower() {
    
}