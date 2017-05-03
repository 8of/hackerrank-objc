#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger n;
    scanf("%li",&n);
    NSInteger c[n];
    NSInteger socks[102];
    for (NSInteger c_i = 0; c_i <= 100; c_i++) {
      socks[c_i] = 0;
    }
    for (NSInteger c_i = 0; c_i < n; c_i++) {
      scanf("%li",&c[c_i]);
      socks[c[c_i]] += 1;
    }
    NSInteger answer = 0;
    for (NSInteger c_i = 0; c_i <= 100; c_i++) {
      answer += socks[c_i] / 2;
    }
    printf("%li", answer);
  }
  return 0;
}
