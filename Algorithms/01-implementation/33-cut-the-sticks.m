#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger n;
    scanf("%li",&n);
    NSMutableArray <NSNumber *> *a = [@[] mutableCopy];
    for (NSInteger arr_i = 0; arr_i < n; arr_i++) {
      NSInteger input;
      scanf("%li",&input);
      [a addObject:[NSNumber numberWithInteger:input]];
    }
    [a sortUsingSelector:@selector(compare:)];
    while (a.count > 0) {
      printf("%li\n", a.count);
      NSInteger min = a.firstObject.integerValue;
      NSMutableArray <NSNumber *> *newA = [@[] mutableCopy];

      for (NSInteger i=0; i< a.count; i++) {
        NSInteger newValue = a[i].integerValue - min;
        if (newValue > 0) {
          [newA addObject:[NSNumber numberWithInteger:newValue]];
        }
      }
      [newA sortUsingSelector:@selector(compare:)];
      a = newA;
    };
  }
  return 0;
}
