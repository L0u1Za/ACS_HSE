//------------------------------------------------------------------------------
// container.cpp - содержит функции обработки контейнера
//------------------------------------------------------------------------------

#include "container.h"

//------------------------------------------------------------------------------
// Инициализация контейнера
void container::Init() {
    this->len = 0;
}

//------------------------------------------------------------------------------
// Очистка контейнера от элементов (освобождение памяти)
void container::Clear() {
    for (int i = 0; i < this->len; ++i) {
        delete this->cont[i];
    }
    this->len = 0;
}

//------------------------------------------------------------------------------
// Ввод содержимого контейнера из указанного потока
void container::In(std::ifstream &ifst) {
    while (!ifst.eof()) {
        int input_type;
        ifst >> input_type;
        switch (input_type) {
            case 1:
                this->cont[this->len] = new tree();
                this->cont[this->len]->In(ifst);
                ++(this->len);
                break;
            case 2:
                this->cont[this->len] = new shrub();
                this->cont[this->len]->In(ifst);
                ++(this->len);
                break;
            case 3:
                this->cont[this->len] = new flower();
                this->cont[this->len]->In(ifst);
                ++(this->len);
                break;
        }
    }
}

//------------------------------------------------------------------------------
// Случайный ввод содержимого контейнера
void container::InRnd(int size) {
    while (this->len < size) {
        int input_type = Random() % 3;
        switch (input_type) {
            case 0:
                this->cont[this->len] = new tree();
                this->cont[this->len]->InRnd();
                ++(this->len);
                break;
            case 1:
                this->cont[this->len] = new shrub();
                this->cont[this->len]->InRnd();
                ++(this->len);
                break;
            case 2:
                this->cont[this->len] = new flower();
                this->cont[this->len]->InRnd();
                ++(this->len);
                break;
        }
    }
}

//------------------------------------------------------------------------------
// Вывод содержимого контейнера в указанный поток
void container::Out(std::ofstream &ofst) {
    ofst << "Container contains " << this->len << " elements.\n";
    for (int i = 0; i < this->len; ++i) {
        ofst << i << ": ";
        this->cont[i]->Out(ofst);
    }
}

//------------------------------------------------------------------------------
// Сортировка элементов контейнера по убыванию используя шейкерную сортировку
void container::Sort() {
    int leftMark = 1;
    int rightMark = this->len - 1;
        while (leftMark <= rightMark) {
        for (int i = rightMark; i >= leftMark; i--)
            if (this->cont[i - 1]->CountExpr() < this->cont[i]->CountExpr())
                std::swap(this->cont[i - 1], this->cont[i]);
        leftMark++;
        
        for (int i = leftMark; i <= rightMark; i++)
            if (this->cont[i - 1]->CountExpr() < this->cont[i]->CountExpr()) 
                std::swap(this->cont[i - 1], this->cont[i]);
        rightMark--;
    }
}