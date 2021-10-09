//------------------------------------------------------------------------------
// container.cpp - содержит функции обработки контейнера
//------------------------------------------------------------------------------

#include "container.h"

//------------------------------------------------------------------------------
// Инициализация контейнера
void Init(container &c) {
    c.len = 0;
}

//------------------------------------------------------------------------------
// Очистка контейнера от элементов (освобождение памяти)
void Clear(container &c) {
    for (int i = 0; i < c.len; ++i) {
        delete c.cont[i];
    }
    c.len = 0;
}

//------------------------------------------------------------------------------
// Ввод содержимого контейнера из указанного потока
void In(container &c, std::ifstream &ifst) {
    while (!ifst.eof()) {
        c.cont[c.len] = In(ifst);
        ++c.len;
    }
}

//------------------------------------------------------------------------------
// Случайный ввод содержимого контейнера
void InRnd(container &c, int size) {
    while (c.len < size) {
        c.cont[c.len] = InRnd();
        ++c.len;
    }
}

//------------------------------------------------------------------------------
// Вывод содержимого контейнера в указанный поток
void Out(container &c, std::ofstream &ofst) {
    ofst << "Container contains " << c.len << " elements.\n";
    for (int i = 0; i < c.len; ++i) {
        ofst << i << ": ";
        Out(*(c.cont[i]), ofst);
    }
}
void swapElement(plant* first, plant* second) { // Меняем значения элементов контейнера
    plant temp = *first;
    *first = *second;
    *second = temp; 
}

//------------------------------------------------------------------------------
// Сортировка элементов контейнера по убыванию используя шейкерную сортировку
void Sort(container &c) {
    int leftMark = 1;
    int rightMark = c.len - 1;
        while (leftMark <= rightMark) {
        for (int i = rightMark; i >= leftMark; i--)
            if (CountExpr(*c.cont[i - 1]) < CountExpr(*c.cont[i]))
                swapElement(c.cont[i - 1], c.cont[i]);
        leftMark++;
        
        for (int i = leftMark; i <= rightMark; i++)
            if (CountExpr(*c.cont[i - 1]) < CountExpr(*c.cont[i])) 
                swapElement(c.cont[i - 1], c.cont[i]);
        rightMark--;
    }
}