#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger t;
    scanf("%li",&t);
    NSInteger rem = 3;
    while (t > rem) {
      t = t-rem;
      rem *= 2;
    }

    printf("%li", rem-t+1);
  }
  return 0;
}
