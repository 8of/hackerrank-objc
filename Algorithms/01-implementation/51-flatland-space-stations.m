#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger n;
    NSInteger m;
    scanf("%li %li",&n,&m);
    NSMutableArray <NSNumber *> *c = [@[] mutableCopy];
    for(NSInteger c_i = 0; c_i < m; c_i++){
      NSInteger input;
      scanf("%li",&input);
      [c addObject:@(input)];
    }
    if (m==n) {
      printf("0");
      return 0;
    }
    NSArray <NSNumber *> *sorted = [c sortedArrayUsingSelector:@selector(compare:)];
    NSInteger answer = 0;
    NSNumber *prev;
    for (NSNumber *port in sorted) {
      if (prev) {
        NSInteger diff = labs(port.integerValue-prev.integerValue);
        answer = MAX(answer, diff);
      }
      prev = port;
    }
    answer--;
    NSInteger add = (answer % 2 == 0) ? 0 : 1;
    answer = answer/2 + add;
    if (sorted.firstObject.integerValue != 0) {
      NSInteger diff = sorted.firstObject.integerValue;
      answer = MAX(answer, diff);
    }
    if (sorted.lastObject.integerValue != n-1) {
      NSInteger diff = n-1 - sorted.lastObject.integerValue;
      answer = MAX(answer, diff);
    }

    printf("%li", answer);
  }
  return 0;
}
