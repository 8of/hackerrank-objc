#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    int n;
    int m;
    scanf("%i %i",&n,&m);
    NSMutableArray <NSNumber *> *aTemp = [NSMutableArray new];
    for(int a_i = 0; a_i < n; a_i++){
      NSInteger temp;
      scanf("%li",&temp);
      [aTemp addObject:[NSNumber numberWithInteger:temp]];
    }
    NSArray <NSNumber *> *a = [aTemp sortedArrayUsingSelector:@selector(compare:)];

    NSMutableArray <NSNumber *> *bTemp = [NSMutableArray new];
    for(int b_i = 0; b_i < m; b_i++){
      NSInteger temp;
      scanf("%li",&temp);
      [bTemp addObject:[NSNumber numberWithInteger:temp]];
    }
    NSArray <NSNumber *> *b = [bTemp sortedArrayUsingSelector:@selector(compare:)];

    NSMutableArray <NSNumber *> *candidates = [NSMutableArray new];
    for (NSInteger i=a.lastObject.integerValue; i<=b.firstObject.integerValue; i++) {
      if (i % a.lastObject.integerValue == 0 && b.firstObject.integerValue % i == 0) {
        [candidates addObject:[NSNumber numberWithInteger:i]];
      }
    }

    for (NSNumber *number in [candidates reverseObjectEnumerator]) {
      for (NSNumber *numA in a) {
        if (number.integerValue % numA.integerValue == 0) {
        } else {
          [candidates removeObject:number];
          break;
        }
      }
      for (NSNumber *numB in b) {
        if (numB.integerValue % number.integerValue == 0) {
        } else {
          [candidates removeObject:number];
          break;
        }
      }
    }
    printf("%li", candidates.count);
  }
  return 0;
}
