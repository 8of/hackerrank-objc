#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger t;
    scanf("%li",&t);
    for (NSInteger a0 = 0; a0 < t; a0++) {
      NSInteger n;
      NSInteger c;
      NSInteger m;
      scanf("%li %li %li",&n,&c,&m);
      NSInteger answer = 0;
      NSInteger wrappers = 0;
      while (n >= c) {
        n -= c;
        wrappers++;
        if (wrappers == m) {
          wrappers = 0;
          n += c;
        }
        answer++;
      }
      printf("%li\n", answer);
    }
  }
  return 0;
}
