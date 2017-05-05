#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    int t;
    scanf("%i",&t);
    for(int a0 = 0; a0 < t; a0++){
      int n;
      scanf("%i",&n);
      int height = 1;
      for (int i=0; i<n; i++) {
        if (i % 2 == 0) {
          height += height;
        } else {
          height++;
        }
      }
      printf("%i\n", height);
    }
  }
  return 0;
}
