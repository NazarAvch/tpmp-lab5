#import "TableGenerator.h"

@implementation TableGenerator
- (void)printSquareTable {
    NSLog(@"\n=====================\n|   n   |    n^2    |\n=====================");
    for (int n = 1; n <= 10; n++) {
        NSLog(@"| %5d | %9d |", n, n * n);
    }
    NSLog(@"=====================");
}
@end