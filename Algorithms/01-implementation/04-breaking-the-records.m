#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    int n;
    scanf("%i",&n);
    NSUInteger score[n];
    NSUInteger best = 0;
    NSUInteger worst = 0;
    NSInteger increase = 0;
    NSInteger decrease = 0;
    for(NSInteger score_i = 0; score_i < n; score_i++){
      scanf("%lu",&score[score_i]);
      if (score_i == 0) {
        best = score[score_i];
        worst = score[score_i];
      } else if (best < score[score_i]) {
        best = score[score_i];
        increase = increase + 1;
      } else if (score[score_i] < worst) {
        worst = score[score_i];
        decrease = decrease + 1;
      }
    }
    printf("%li %li", increase, decrease);
  }
  return 0;
}
