import tree
import shrub
import flower
from rnd import Random

#----------------------------------------------
# Класс контейнера для растений
class Container:
    # Конструктор контейнера
    def __init__(self):
        self.store = []

    # Заполнение контейнера растениями из массива строк
    def ReadStrArray(self, strArray):
        arrayLen = len(strArray)
        i = 0   # Индекс, задающий текущую строку в массиве
        while i < arrayLen:
            str = strArray[i]
            key = int(str)   # преобразование в целое 
            if key == 1: # признак дерева
                plant = tree.Tree()
            elif key == 2: # признак кустарника
                plant = shrub.Shrub()
            elif key == 3: # признак цветка
                plant = flower.Flower()
            else:
                # что-то пошло не так. Должен быть известный признак
                return
            i += 1
            i = plant.ReadStrArray(strArray, i) # чтение растения с возвратом позиции за ним
            self.store.append(plant)

    # Заполнение контейнера случайно генерируемыми растениями
    def RandomIn(self, numOfElems):
        for i in range(numOfElems):
            key = Random() % 3 + 1
            plant = tree.Tree()
            if key == 1: # признак дерева
                plant = tree.Tree()
            elif key == 2: # признак кустарника
                plant = shrub.Shrub()
            elif key == 3: # признак цветка
                plant = flower.Flower()
            plant.RandomIn()
            self.store.append(plant)

    # Вывод всех элементов контейнера в файл
    def Write(self, ostream):
        ostream.write(f"Container stores {len(self.store)} plants:\n")
        for i in range(len(self.store)):
            ostream.write(f"{i}: ")
            self.store[i].Write(ostream)
            ostream.write("\n")

    # Сортировка элементов контейнера по убыванию используя шейкерную сортировку
    def Sort(self):
        leftMark = 0
        rightMark = len(self.store) - 1
        while (leftMark <= rightMark):
            for i in range(rightMark, leftMark, -1):
                if (self.store[i - 1].CountExpr() < self.store[i].CountExpr()):
                    self.store[i - 1], self.store[i] = self.store[i], self.store[i - 1]
            leftMark += 1
            for i in range(leftMark, rightMark, +1):
                if (self.store[i - 1].CountExpr() < self.store[i].CountExpr()):
                    self.store[i - 1], self.store[i] = self.store[i], self.store[i - 1]
            rightMark -= 1
