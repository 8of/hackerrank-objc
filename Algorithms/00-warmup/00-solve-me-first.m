#import <Foundation/Foundation.h>

int solveMeFirst(int a, int b) {
  return a+b;
}

int main (int argc, const char * argv[]) {
  @autoreleasepool {
    int a,b,res;
    scanf("%d %d", &a, &b);
    res = solveMeFirst(a,b);
    printf("%d", res);
  }
  return 0;
}
