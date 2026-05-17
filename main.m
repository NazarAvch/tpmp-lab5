#import <Foundation/Foundation.h>
#import "TableGenerator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Создание экземпляра класса и отправка сообщения (вызов метода)
        TableGenerator *generator = [[TableGenerator alloc] init];
        [generator printSquareTable];
    }
    return 0;
}