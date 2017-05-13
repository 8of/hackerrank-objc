#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
  @autoreleasepool {
    NSInteger n;
    scanf("%li",&n);

    NSInteger c[n];
    for (NSInteger i=0; i<n; i++) {
      scanf("%li", &c[i]);
    }
    NSInteger answer = 0;
    NSInteger i=0;
    do {
      if (i+2 <= n-1) {
        if (c[i+2] == 0) {
          answer++;
          i = i+2;
        } else {
          answer++;
          i = i+1;
        }
      } else {
        answer++;
        i = i+1;
      }
    } while(i < n-1);
    printf("%li", answer);
  }
  return 0;
}
