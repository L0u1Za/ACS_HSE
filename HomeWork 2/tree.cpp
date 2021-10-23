//------------------------------------------------------------------------------
// tree.cpp - содержит функции обработки дерева
//------------------------------------------------------------------------------

#include "tree.h"

//------------------------------------------------------------------------------
// Ввод параметров дерева из потока
void tree::In(std::ifstream &ifst) {
    ifst >> this->age >> this->name;
}

// Случайный ввод параметров дерева
void tree::InRnd() {
    this->age = Random();
    for (size_t i = 0; i < MAX_NAME_SIZE; ++i) {
        this->name[i] = (char)('a' + Random());
    }
    this->name[MAX_NAME_SIZE - 1] = '\0';
}

//------------------------------------------------------------------------------
// Вывод параметров дерева в поток
void tree::Out(std::ofstream &ofst) {
    ofst << "It is tree: age = "
         << this->age << ", name = " << this->name
         << ". CountExpr = " << this->CountExpr() << "\n";
}

//------------------------------------------------------------------------------
// Вычисление частного от деления числа гласных букв
// в названии дерева на общую длину его названия

double tree::CountExpr() {
    // переменная для подсчёта гласных в названии дерева
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

tree::~tree() {

}