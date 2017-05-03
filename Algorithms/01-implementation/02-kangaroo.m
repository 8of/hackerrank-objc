#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    NSInteger x1;
    NSInteger v1;
    NSInteger x2;
    NSInteger v2;
    scanf("%li %li %li %li",&x1,&v1,&x2,&v2);
    if (x1 == x2) {
      printf("YES");
    } else if (v1 == v2) {
      printf("NO");
    } else if (x1 < x2 && v1 < v2) {
      printf("NO");
    } else if (x2 < x1 && v2 < v1) {
      printf("NO");
    } else {
      if (x1 < x2) {
        do {
          x1 = x1 + v1;
          x2 = x2 + v2;
        } while (x1 < x2);
      } else {
        do {
          x1 = x1 + v1;
          x2 = x2 + v2;
        } while (x1 > x2);
      }
      if (x1 == x2) {
        printf("YES");
      } else {
        printf("NO");
      }
    }
  }
  return 0;
}
