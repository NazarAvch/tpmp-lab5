import Foundation

class ConsoleView {
    
    // Вывод массива с проверкой на nil и пустоту
    func printArray(_ array: [String]?, title: String) {
        print("\n========== \(title) ==========")
        if let arr = array {
            if arr.isEmpty {
                print("Массив пуст.")
            } else {
                for (index, element) in arr.enumerated() {
                    print("[\(index)] \(element)")
                }
            }
        } else {
            print("Массив равен nil (не инициализирован)!")
        }
        print("===================================\n")
    }
    
    // Вывод сообщения
    func printMessage(_ message: String) {
        print(message)
    }
}