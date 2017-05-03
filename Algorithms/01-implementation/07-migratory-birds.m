#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger n;
    scanf("%li",&n);
    NSInteger types[n];
    NSInteger storage[6];
    for (NSInteger i = 1; i <= 5; i++) {
      storage[i] = 0;
    }
    for (NSInteger types_i = 0; types_i < n; types_i++) {
      scanf("%li",&types[types_i]);
      storage[types[types_i]] += 1;
    }
    NSInteger max = 0;
    NSInteger maxValue = 0;
    for (NSInteger i = 1; i <= 5; i++) {
      if (max < storage[i]) {
        max = storage[i];
        maxValue = i;
      }
    }

    printf("%li", maxValue);
  }
  return 0;
}
