#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    int n;
    scanf("%i", &n);
    int answer = 2;
    if (n==1) { // day 1
      printf("%i", answer);
      return 0;
    }
    int prev = answer;
    for (int i=2; i<=n; i++) { // next days
      int new = (prev*3)/2;
      answer = answer + new;
      prev = new;
    }
    printf("%i", answer);
  }
  return 0;
}
