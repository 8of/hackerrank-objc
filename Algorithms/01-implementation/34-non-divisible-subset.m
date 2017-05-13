#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger n;
    NSInteger k;
    scanf("%li %li", &n, &k);
    NSInteger a[n];
    NSInteger remainders[k];
    for (NSInteger i=0; i<k; i++) {
      remainders[i] = 0;
    }
    for (NSInteger i=0; i<n; i++) {
      scanf("%li", &a[i]);
      NSInteger remainder = a[i] % k;
      remainders[remainder]++;
    }
    NSInteger answer = 0;
    for (NSInteger i=1; i <= k/2; i++) {
      NSInteger left = remainders[i];
      NSInteger right = remainders[k-i];
      if (i == k-i) { // should add at most one in this case
        if (left > 0) {
          left = 1;
          right = 1;
        }
      }
      answer += (left > right) ? left : right;
    }
    if (remainders[0] > 0) { // should add at most one in this case
      answer++;
    }
    if (answer == 0) {
      answer = 1;
    }
    printf("%li\n", answer);
  }
  return 0;
}
