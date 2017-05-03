#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger n; // elements count
    NSInteger k; // items should be divisible by this param
    scanf("%li %li",&n,&k);
    NSInteger a[n];
    for (NSInteger a_i = 0; a_i < n; a_i++) {
      scanf("%li",&a[a_i]);
    }

    NSInteger answer = 0;

    // variants
    for (NSInteger i=0; i<n; i++) {

      for (NSInteger j=0; j<n; j++) {
        if (i == j) {
          continue;
        }
        if ((a[i] + a[j]) % k == 0) {
          answer += 1;
        }
        // printf("el: %li\n", a[j]);
      }
    }
    printf("%li", answer/2);
  }
  return 0;
}
