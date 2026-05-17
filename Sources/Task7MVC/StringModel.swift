import Foundation

class DataManipulator {
    var strings: [String]? // Опциональный тип данных (требование задания)
    
    init(strings: [String]?) {
        self.strings = strings
    }
    
    // Приватный метод подсчёта гласных букв в строке
    private func countVowels(in str: String) -> Int {
        let vowels = CharacterSet(charactersIn: "aeiouyAEIOUYаеёиоуыэюяАЕЁИОУЫЭЮЯ")
        // Разбиваем строку по гласным и считаем количество частей минус 1
        return str.components(separatedBy: vowels).count - 1
    }
    
    // Публичный метод сортировки по количеству гласных
    func sortByVowelCount() -> [String]? {
        // Безопасное разворачивание опционала через guard
        guard let actualStrings = strings else {
            print("Массив равен nil! Сортировка невозможна.")
            return nil
        }
        // Сортировка: сначала строки с меньшим количеством гласных
        return actualStrings.sorted { countVowels(in: $0) < countVowels(in: $1) }
    }
}