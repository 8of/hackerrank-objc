#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    int n;
    scanf("%i",&n);
    for (int i=1; i<=n; i++) {
      for (int j=0; j<n; j++) {
        if (n-i > j) {
          printf(" ");
        } else {
          printf("#");
        }
      }
      printf("\n");
    }
  }
  return 0;
}
