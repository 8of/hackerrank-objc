#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger n = 5;
    NSMutableArray *arr0 = [@[] mutableCopy];
    for(int arr_i = 0; arr_i < n; arr_i++){
      NSInteger enter = 0;
      scanf("%li",&enter);
      [arr0 addObject:[NSNumber numberWithInteger:enter]];
    }
    NSArray *arr = [arr0 sortedArrayUsingSelector:@selector(compare:)];
    NSInteger min = 0;
    NSInteger max = 0;
    NSInteger middle = 0;
    for (NSInteger i = 1; i < n-1; i++){
      NSNumber *number = (NSNumber *)arr[i];
      middle = middle + number.integerValue;
    }
    NSNumber *numberFirst = (NSNumber *)arr.firstObject;
    NSNumber *numberLast = (NSNumber *)arr.lastObject;
    min = middle + numberFirst.integerValue;
    max = middle + numberLast.integerValue;

    printf("%li %li", min, max);
  }
  return 0;
}
