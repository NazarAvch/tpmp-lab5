#import "ArrayProcessor.h"

@implementation ArrayProcessor

// Приватный метод для вывода массива (демонстрация приватности)
- (void)printArray:(NSArray *)array withTitle:(NSString *)title {
    NSLog(@"--- %@ (Всего элементов: %lu) ---", title, (unsigned long)array.count);
    for (id item in array) {
        printf("%s ", [[item description] UTF8String]);
    }
    printf("\n");
}

- (void)runArrayDemonstration {
    // а) Вывод и б) Создание пустого изменяемого массива
    NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
    
    // в) Имитация ввода элементов (заполнение базовыми значениями)
    [mutableArray addObject:@10];
    [mutableArray addObject:@20];
    
    // д) Добавление элемента
    [mutableArray addObject:@30];
    
    // е) Вставка элемента по индексу
    [mutableArray insertObject:@15 atIndex:1];
    [self printArray:mutableArray withTitle:@"После вставки"];
    
    // ё) Удаление последнего элемента
    [mutableArray removeLastObject];
    
    // ж) Удаление по индексу
    [mutableArray removeObjectAtIndex:0];
    
    // з) Удаление всех элементов
    [mutableArray removeAllObjects];
    [self printArray:mutableArray withTitle:@"После полной очистки"];
}

- (void)executeVariantOne {
    // Вариант 1: Массив чисел -> сортировка -> новый массив из первых 3 элементов
    NSArray *initialArray = @[@42, @12, @88, @5, @23, @7, @1];
    [self printArray:initialArray withTitle:@"Исходный массив"];
    
    NSMutableArray *sortedArray = [initialArray mutableCopy];
    [sortedArray sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 compare:obj2];
    }];
    [self printArray:sortedArray withTitle:@"Отсортированный массив"];
    
    // Создание нового массива из первых трех элементов
    NSRange range = NSMakeRange(0, MIN(3, sortedArray.count));
    NSArray *firstThree = [sortedArray subarrayWithRange:range];
    [self printArray:firstThree withTitle:@"Новый массив (первые 3 элемента)"];
}
@end