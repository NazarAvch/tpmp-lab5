import Foundation

class AppController {
    private let view = ConsoleView()
    
    func start() {
        view.printMessage("===== ЗАДАНИЕ 7: MVC + ОПЦИОНАЛЬНЫЙ МАССИВ =====")
        
        // ========== Общая часть задания (пункты а-з) ==========
        view.printMessage("\n1. ДЕМОНСТРАЦИЯ РАБОТЫ С МАССИВАМИ:")
        
        // б) Создание пустого изменяемого массива
        var mutableArray = [String]()
        view.printMessage("- Создан пустой изменяемый массив")
        
        // в) Ввод элементов с консоли (симуляция)
        view.printMessage("- Введите 3 строки через пробел (или нажмите Enter для тестовых данных):")
        if let input = readLine(), !input.isEmpty {
            mutableArray = input.components(separatedBy: " ")
        } else {
            mutableArray = ["Swift", "Objective-C", "Xcode"]
            view.printMessage("- Использованы тестовые данные: \(mutableArray.joined(separator: ", "))")
        }
        
        // а) Вывод массива
        view.printArray(mutableArray, title: "Исходный массив")
        
        // г) Подсчёт количества элементов
        let immutableArray = ["A", "B", "C"] // неизменяемый массив для демонстрации
        view.printMessage("Количество в неизменяемом: \(immutableArray.count), в изменяемом: \(mutableArray.count)")
        
        // д) Добавление элемента
        mutableArray.append("Новый элемент")
        view.printArray(mutableArray, title: "После добавления элемента")
        
        // е) Вставка элемента по индексу
        if mutableArray.count >= 2 {
            mutableArray.insert("Вставленный", at: 1)
            view.printArray(mutableArray, title: "После вставки по индексу 1")
        }
        
        // ё) Удаление последнего элемента
        mutableArray.removeLast()
        view.printArray(mutableArray, title: "После удаления последнего")
        
        // ж) Удаление элемента по индексу
        if !mutableArray.isEmpty {
            mutableArray.remove(at: 0)
            view.printArray(mutableArray, title: "После удаления по индексу 0")
        }
        
        // з) Удаление всех элементов
        mutableArray.removeAll()
        view.printArray(mutableArray, title: "После удаления всех элементов")
        
        // ========== Индивидуальное задание (Вариант 1, п. 7) ==========
        view.printMessage("\n2. ИНДИВИДУАЛЬНОЕ ЗАДАНИЕ (Вариант 1):")
        view.printMessage("Класс DataManipulator + сортировка по гласным")
        
        // Тест 1: с данными
        let sampleData: [String]? = ["Программа", "Алгоритм", "Код", "Компиляция", "ЭВМ", "iOS"]
        view.printArray(sampleData, title: "Данные ДО сортировки")
        
        let manipulator = DataManipulator(strings: sampleData)
        let sortedResult = manipulator.sortByVowelCount()
        view.printArray(sortedResult, title: "Данные ПОСЛЕ сортировки (по возрастанию гласных)")
        
        // Тест 2: с nil (демонстрация опционального типа)
        view.printMessage("\nДемонстрация работы с nil:")
        let nilManipulator = DataManipulator(strings: nil)
        let nilResult = nilManipulator.sortByVowelCount()
        view.printArray(nilResult, title: "Результат сортировки nil-массива")
        
        view.printMessage("\n===== ПРОГРАММА ЗАВЕРШЕНА =====")
    }
}