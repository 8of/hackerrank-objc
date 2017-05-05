#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger n;
    NSInteger k; // count of times to turn array to the right
    NSInteger q;
    scanf("%li %li %li",&n, &k, &q);

    k = k % n;

    NSInteger a[n];
    for (NSInteger i=0; i < n; i++) {
      scanf("%li",&a[i]);
    }

    for (NSInteger i=0; i < q; i++) {
      NSInteger m;
      scanf("%li",&m);
      NSInteger newIndex = m - k < 0 ? n+(m - k) : m - k;
      printf("%li\n", a[newIndex]);
    }

  }
  return 0;
}
