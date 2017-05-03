#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger n;
    scanf("%li",&n);

    NSMutableOrderedSet <NSNumber *> *scores = [[NSMutableOrderedSet alloc] init];
    for (NSInteger scores_i = 0; scores_i < n; scores_i++) {
      NSInteger score;
      scanf("%li",&score);
      [scores addObject:[NSNumber numberWithInteger:score]];
    }

    NSInteger m;
    scanf("%li",&m);
    NSInteger alice[m];

    NSInteger storedIndex = scores.count-1;
    for (NSInteger alice_i = 0; alice_i < m; alice_i++) {
      scanf("%li",&alice[alice_i]);
      BOOL breaked = NO;
      for (NSInteger i=storedIndex; 0<=i; i--) {
        if (alice[alice_i] == scores[i].integerValue) {
          printf("%li\n", i+1);
          storedIndex = i-1;
          breaked = YES;
          break;
        } else if (alice[alice_i] < scores[i].integerValue) {
          printf("%li\n", i+2);
          storedIndex = i;
          breaked = YES;
          break;
        }
      }
      if (!breaked) { // last
        printf("1\n");
      }
    }
  }
  return 0;
}
