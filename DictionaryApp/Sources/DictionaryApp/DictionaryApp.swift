import Foundation
import DictionaryPackage

let manager = DictionaryManager()
var running = true

while running {
    print("""
    
    ====== МЕНЮ ======
    1. Инициализировать пустой словарь
    2. Инициализировать словарь с Person/Staff
    3. Добавить элемент (ключ значение)
    4. Количество элементов
    5. Получить значение по ключу
    6. Вывести все элементы
    7. Модифицировать элемент
    8. Сортировать по ключу
    9. Сортировать по значению
    10. Удалить элемент по ключу
    11. Удалить все
    0. Выход
    Ваш выбор:
    """)
    
    if let choice = readLine(), let option = Int(choice) {
        switch option {
        case 1:
            manager.initializeEmpty()
        case 2:
            manager.initializeWithData()
        case 3:
            print("Введите ключ:")
            let key = readLine() ?? ""
            print("Введите значение:")
            let value = readLine() ?? ""
            manager.addEntry(key: key, value: value)
        case 4:
            print("Количество элементов: \(manager.count())")
        case 5:
            print("Введите ключ для поиска:")
            let k = readLine() ?? ""
            manager.getValue(forKey: k)
        case 6:
            manager.printAll()
        case 7:
            print("Введите ключ для изменения:")
            let k = readLine() ?? ""
            print("Введите новое значение:")
            let v = readLine() ?? ""
            manager.modifyValue(key: k, newValue: v)
        case 8:
            manager.sortByKey()
        case 9:
            manager.sortByValueString()
        case 10:
            print("Введите ключ для удаления:")
            let k = readLine() ?? ""
            manager.removeEntry(key: k)
        case 11:
            manager.removeAll()
        case 0:
            running = false
            print("До свидания!")
        default:
            print("Неверный выбор, попробуйте снова")
        }
    }
}