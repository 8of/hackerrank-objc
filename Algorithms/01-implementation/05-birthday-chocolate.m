#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger n;
    scanf("%li",&n);
    NSInteger squares[n];
    for(int squares_i = 0; squares_i < n; squares_i++){
      scanf("%li",&squares[squares_i]);
    }
    NSInteger d; // sum
    NSInteger m; // count of squares
    scanf("%li %li",&d,&m);
    NSInteger answer = 0;
    // check bounds
    if (m > n) {
      printf("%li", answer);
      return 0;
    }

    int count = 0;
    int sum = 0;

    // variants
    int l = 0;
    for (int j=l; j<n; j++) {
      count += 1;
      sum += squares[j];
      if (count == m) {
        if (sum == d) {
          answer += 1;
        }
        l += 1;
        j = l-1;
        count = 0;
        sum = 0;
      }
    }
    printf("%li", answer);
  }
  return 0;
}
