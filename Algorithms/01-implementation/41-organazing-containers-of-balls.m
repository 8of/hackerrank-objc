#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger q;
    scanf("%li",&q);
    for(NSInteger a0 = 0; a0 < q; a0++){
      NSInteger n;
      scanf("%li",&n);
      NSInteger M[n][n];
      NSMutableArray <NSNumber *> *ballTypesCount = [@[] mutableCopy];;
      NSMutableArray <NSNumber *> *ballsInBasketCount = [@[] mutableCopy];;
      for (NSInteger i=0; i<n; i++) {
        [ballTypesCount addObject:[NSNumber numberWithInteger:0]];
        [ballsInBasketCount addObject:[NSNumber numberWithInteger:0]];
      }
      for (NSInteger M_i = 0; M_i < n; M_i++) {
        for (NSInteger M_j = 0; M_j < n; M_j++) {
          scanf("%li",&M[M_i][M_j]);
          ballTypesCount[M_j] = @(ballTypesCount[M_j].integerValue + M[M_i][M_j]);
          ballsInBasketCount[M_i] = @(ballsInBasketCount[M_i].integerValue + M[M_i][M_j]);
        }
      }
      NSArray <NSNumber *> *sortedBallTypesCount = [ballTypesCount sortedArrayUsingSelector:@selector(compare:)];
      NSArray <NSNumber *> *sortedballsInBasketCount = [ballsInBasketCount sortedArrayUsingSelector:@selector(compare:)];
      NSString *answer = @"Possible";
      for (NSInteger i=0; i<n; i++) {
        if (sortedBallTypesCount[i].integerValue != sortedballsInBasketCount[i].integerValue) {
          answer = @"Impossible";
          break;
        }
      }

      printf("%s\n", [answer UTF8String]);
    }
  }
  return 0;
}
