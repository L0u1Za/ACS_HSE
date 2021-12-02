from enum import Enum
from rnd import Random, randName

#----------------------------------------------
# Перечисляемый тип представляющий месяц
class Month(Enum):
    JANUARY = 1
    FEBRUARY = 2
    MARCH = 3
    APRIL = 4
    MAY = 5
    JUNE = 6
    JULY = 7
    AUGUST = 8
    SEPTEMBER = 9
    OCTOBER = 10
    NOVEMBER = 11
    DECEMBER = 12
    INVALID_MONTH_NUMBER = 0

# Класс кустарника
class Shrub :
    # Конструктор кустарника
    def __init__(self):
        self.name = ""
        self.floweringMonth = Month.INVALID_MONTH_NUMBER.name
    
    # Считывание параметров кустарника из строки
    def ReadStrArray(self, strArray, i):
        if i >= len(strArray) - 1:
            return 0
        self.name = strArray[i]
        self.floweringMonth = Month(int(strArray[i + 1]) 
            if int(strArray[i + 1]) <= 12 and int(strArray[i + 1]) >= 0 else 0).name
        i += 2
        return i

    # Случайная генерация параметров кустарника
    def RandomIn(self):
        self.name = randName()
        self.floweringMonth = Month(Random() % 12 + 1).name

    # Вывод данных кустарника в файл
    def Write(self, ostream):
        ostream.write(f"Shrub: name = {self.name}, flowering month = {self.floweringMonth}, CountExpr = {self.CountExpr()}")
        pass

    # Вычисление частного от деления числа гласных букв
    # в названии кустарника на общую длину его названия
    def CountExpr(self):
        numberOfVowels = 0
        for ch in self.name:
            if(ch == 'a' or ch == 'e' or ch == 'i' or ch == 'o' or ch == 'u' or ch == 'A'
                or ch == 'E' or ch == 'I' or ch == 'O' or ch == 'U'):
                numberOfVowels += 1
        return numberOfVowels / len(self.name)