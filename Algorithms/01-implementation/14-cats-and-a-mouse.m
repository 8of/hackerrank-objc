#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger q; // count
    scanf("%li",&q);
    for (NSInteger a0 = 0; a0 < q; a0++) {
      NSInteger x; // cat A
      NSInteger y; // cat B
      NSInteger z; // mouse C
      scanf("%li %li %li",&x,&y,&z);
      NSInteger diffA = labs(x-z);
      NSInteger diffB = labs(y-z);
      if (diffA < diffB) {
        printf("Cat A\n");
      } else if (diffB < diffA) {
        printf("Cat B\n");
      } else {
        printf("Mouse C\n");
      }
    }
  }
  return 0;
}
