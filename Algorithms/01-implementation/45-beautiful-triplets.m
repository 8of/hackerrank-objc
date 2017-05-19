#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    int n;
    int d;
    scanf("%i %i", &n, &d);
    int sum = 20001;
    bool bits[20001];
    while (--sum) bits[sum] = false;
    while (scanf("%d", &n) > 0) {
      bits[n] = true;
      if (n >= d+d && bits[n-d] && bits[n-d-d]) ++sum;
    }
    printf("%i", sum);
  }
  return 0;
}
