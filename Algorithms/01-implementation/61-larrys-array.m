#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger t;
    scanf("%li", &t);
    for (NSInteger i = 0; i < t; i++) {
      NSInteger answer = 0;
      NSInteger n;
      scanf("%li", &n);
      NSInteger a[n];
      for (NSInteger j = 0; j < n; j++) {
        scanf("%li", &a[j]);
      }
      for (NSInteger j = 0; j < n-1; j++) {
        for (NSInteger k = j+1; k < n; k++) {
          if (a[j] > a[k]) {
            answer++;
          }
        }
      }
      if (answer % 2 == 0) {
        printf("YES\n");
      } else {
        printf("NO\n");
      }
    }
  }
  return 0;
}
