#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    int n;
    scanf("%i",&n);
    NSMutableArray *height = [@[] mutableCopy];
    for(int height_i = 0; height_i < n; height_i++){
      NSInteger enter = 0;
      scanf("%li",&enter);
      [height addObject:[NSNumber numberWithInteger:enter]];
    }
    if (n == 0) {
      return 0;
    }
    [height sortUsingComparator:^(id obj1, id obj2) {
      if (obj1 > obj2)
        return NSOrderedAscending;
      else if (obj1 < obj2)
        return NSOrderedDescending;

      return NSOrderedSame;
    }];
    NSInteger count = 0;
    NSNumber *maxNumber = (NSNumber *)height.firstObject;
    NSInteger maxValue = maxNumber.integerValue;
    for (NSNumber *num in height) {
      if (num.integerValue < maxValue) {
        break;
      }
      count += 1;
    }
    printf("%li", count);
  }
  return 0;
}
