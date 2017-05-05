#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger n;
    NSInteger k;
    scanf("%li %li",&n,&k);
    NSInteger c[n];
    for(NSInteger c_i = 0; c_i < n; c_i++){
      scanf("%li",&c[c_i]);
    }
    NSInteger E=100;
    NSInteger currentIndex = 0;
    do {
      E--;
      if (c[currentIndex] == 1) {
        E -= 2;
      }
      currentIndex += k;
      if (currentIndex >= n) {
        currentIndex = currentIndex % n;
      }
    } while (currentIndex != 0);
    printf("%li", E);
  }
  return 0;
}
