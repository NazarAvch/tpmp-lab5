import Foundation

public class DictionaryManager {
    private var dict: [String: Any] = [:]
    
    public init() {}
    
    public func initializeEmpty() {
        dict = [:]
        print("Пустой словарь создан")
    }
    
    public func initializeWithData() {
        dict = [
            "Person": ["name": "Ivan", "weight": 75.5],
            "Staff": ["department": "IT", "position": "Developer"]
        ]
        print("Словарь с данными: \(dict)")
    }
    
    public func addEntry(key: String, value: Any) {
        dict[key] = value
        print("Добавлена запись: \(key) -> \(value)")
    }
    
    public func count() -> Int {
        return dict.count
    }
    
    public func getValue(forKey key: String) {
        if let value = dict[key] {
            print("Значение для ключа '\(key)': \(value)")
        } else {
            print("Ключ '\(key)' не найден")
        }
    }
    
    public func printAll() {
        if dict.isEmpty {
            print("Словарь пуст")
        } else {
            print("Все элементы словаря:")
            for (key, value) in dict {
                print("\(key): \(value)")
            }
        }
    }
    
    public func modifyValue(key: String, newValue: Any) {
        if dict[key] != nil {
            dict[key] = newValue
            print("Значение для ключа '\(key)' изменено на \(newValue)")
        } else {
            print("Ключ '\(key)' не найден")
        }
    }
    
    public func sortByKey() {
        let sorted = dict.sorted { $0.key < $1.key }
        print("Сортировка по ключу:")
        for (k, v) in sorted { print("\(k): \(v)") }
    }
    
    public func sortByValueString() {
        let sorted = dict.sorted { "\($0.value)" < "\($1.value)" }
        print("Сортировка по значению (как строка):")
        for (k, v) in sorted { print("\(k): \(v)") }
    }
    
    public func removeEntry(key: String) {
        if dict.removeValue(forKey: key) != nil {
            print("Элемент с ключом '\(key)' удалён")
        } else {
            print("Ключ '\(key)' не найден")
        }
    }
    
    public func removeAll() {
        dict.removeAll()
        print("Все элементы удалены")
    }
}