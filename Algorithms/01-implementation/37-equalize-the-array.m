#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger n;
    scanf("%li", &n);
    NSMutableDictionary <NSString *, NSNumber *> *integersCount = [[NSMutableDictionary alloc] init];
    for (NSInteger i=0; i<n; i++) {
      NSInteger entered;
      scanf("%li", &entered);
      NSNumber *number = [NSNumber numberWithInteger:entered];
      if (![integersCount valueForKey:number.stringValue]) {
        integersCount[number.stringValue] = [NSNumber numberWithInteger:0];
      }
      NSNumber *newCount = [NSNumber numberWithInteger:(integersCount[number.stringValue].integerValue + 1)];
      integersCount[number.stringValue] = newCount;
    }
    NSArray <NSNumber *> *counts = integersCount.allValues;
    counts = [[[counts sortedArrayUsingSelector:@selector(compare:)] reverseObjectEnumerator] allObjects];
    NSInteger answer = 0;
    for (NSInteger i=1; i< counts.count; i++) {
      answer = answer + counts[i].integerValue;
    }
    printf("%li", answer);
  }
  return 0;
}
